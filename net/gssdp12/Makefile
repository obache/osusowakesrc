# $NetBSD: Makefile,v 1.15 2021/04/21 11:40:33 adam Exp $

DISTNAME=	gssdp-1.2.2
PKGNAME=	${DISTNAME:S/gssdp/gssdp12/}
PKGREVISION=	9
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gssdp/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gupnp.org/
COMMENT=	Simple Service Discovery Protocol library and device sniffer
LICENSE=	gnu-lgpl-v2

USE_TOOLS+=	pkg-config

# needs GTK3+
MESON_ARGS+=	-Dsniffer=false
# needs gtk-doc
MESON_ARGS+=	-Dgtk-doc=false

PYTHON_FOR_BUILD_ONLY=	tool

PKGCONFIG_OVERRIDE+=		output/meson-private/gssdp-1.2.pc
PKGCONFIG_OVERRIDE_STAGE=	pre-install

BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.54.0
.include "../../devel/glib2/buildlink3.mk"
BUILDLINK_DEPMETHOD.gobject-introspection=	build
.include "../../devel/gobject-introspection/buildlink3.mk"
BUILDLINK_DEPMETHOD.vala=	build
.include "../../lang/vala/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"
