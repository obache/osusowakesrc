# $NetBSD: options.mk,v 1.6 2021/04/29 13:06:04 gdt Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.gdal-lib

# Note that these are not a mutually-exclusive group.
PKG_SUPPORTED_OPTIONS=	pgsql mysql
# By default, omit database support, because there isn't an
# articulated use case and dependency management becomes very painful.
# For example, depending on pgsql fixes a version, but doesn't put it
# in the name, and then building postgis fails for all but that one
# chosen version.
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mpgsql)
.  include "../../mk/pgsql.buildlink3.mk"
CONFIGURE_ARGS+=	--with-pg
.else
CONFIGURE_ARGS+=	--without-pg
.endif

.if !empty(PKG_OPTIONS:Mmysql)
.  include "../../mk/mysql.buildlink3.mk"
CONFIGURE_ARGS+=	--with-mysql
.else
CONFIGURE_ARGS+=	--without-mysql
.endif

# There is no ODBC option, and hence only the "no ODBC" case.
CONFIGURE_ARGS+=	--without-odbc
