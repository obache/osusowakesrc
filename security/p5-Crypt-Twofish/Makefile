# $NetBSD: Makefile,v 1.37 2021/05/24 19:54:01 wiz Exp $

DISTNAME=		Crypt-Twofish-2.18
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
CATEGORIES=		security perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Crypt/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://metacpan.org/release/Crypt-Twofish
COMMENT=		Perl5 module for the Twofish symmetric key algorithm
LICENSE=		${PERL5_LICENSE}

USE_TOOLS+=		perl

PERL5_PACKLIST=		auto/Crypt/Twofish/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
