# $NetBSD: Makefile,v 1.7 2021/05/24 19:50:32 wiz Exp $

DISTNAME=	Devel-Leak-0.04
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/S/SR/SREZIC/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Devel-Leak
COMMENT=	Perl module to look for objects that are not reclaimed

PERL5_PACKLIST=		auto/Devel/Leak/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
