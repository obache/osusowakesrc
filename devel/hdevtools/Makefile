# $NetBSD: Makefile,v 1.20 2021/05/03 19:00:53 pho Exp $

DISTNAME=	hdevtools-0.1.8.0
PKGNAME=	${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel #haskell

MAINTAINER=	szptvlfn@NetBSD.org
COMMENT=	Persistent GHC powered background server for FAST haskell dev tools
LICENSE=	mit

# It appears it only supports GHC up to 8.6.x unfortunately.
BROKEN=		"${PKGNAME} is incompatible with GHC 8.8.x"

.include "../../mk/haskell.mk"
.include "../../devel/hs-cmdargs/buildlink3.mk"
.include "../../devel/hs-ghc-paths/buildlink3.mk"
.include "../../net/hs-network/buildlink3.mk"
.include "../../devel/hs-syb/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
