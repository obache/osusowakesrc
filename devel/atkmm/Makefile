# $NetBSD: Makefile,v 1.31 2021/07/02 09:07:12 adam Exp $

DISTNAME=	atkmm-2.28.2
CATEGORIES=	devel gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/atkmm/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=	.tar.xz
EXTRACT_USING=	bsdtar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.gtkmm.org/
COMMENT=	C++ bindings for atk (1.6 API)
LICENSE=	gnu-lgpl-v2.1 AND gnu-gpl-v2

CONFLICTS+=	gtkmm<2.22.0

USE_LANGUAGES=		c c++11
USE_TOOLS+=		perl pkg-config
PKGCONFIG_OVERRIDE+=	atk/atkmm.pc.in
PKGCONFIG_OVERRIDE+=	atk/atkmm-uninstalled.pc.in

.include "../../devel/atk/buildlink3.mk"
.include "../../devel/glibmm/buildlink3.mk"
.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"
