# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -herbie

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite rebuild-after-doc-workaround"
inherit haskell-cabal

DESCRIPTION="Linear Algebra"
HOMEPAGE="https://github.com/ekmett/linear/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+template-haskell"

RDEPEND=">=dev-haskell/adjunctions-4:=[profile?] <dev-haskell/adjunctions-5:=[profile?]
	>=dev-haskell/base-orphans-0.8.3:=[profile?] <dev-haskell/base-orphans-1:=[profile?]
	>=dev-haskell/bytes-0.15:=[profile?] <dev-haskell/bytes-1:=[profile?]
	>=dev-haskell/cereal-0.4.1.1:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/distributive-0.2.2:=[profile?] <dev-haskell/distributive-1:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/lens-4.15.2:=[profile?] <dev-haskell/lens-5:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/reflection-1.3.2:=[profile?] <dev-haskell/reflection-3:=[profile?]
	>=dev-haskell/semigroupoids-5.2.1:=[profile?] <dev-haskell/semigroupoids-6:=[profile?]
	>=dev-haskell/semigroups-0.9:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/tagged-0.4.4:=[profile?] <dev-haskell/tagged-1:=[profile?]
	>=dev-haskell/transformers-compat-0.4:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/void-0.6:=[profile?] <dev-haskell/void-1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	>=dev-haskell/cabal-doctest-1 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.11.1 <dev-haskell/doctest-0.18
		>=dev-haskell/hunit-1.2.5
		>=dev-haskell/simple-reflect-0.3.1
		>=dev-haskell/test-framework-0.8
		>=dev-haskell/test-framework-hunit-0.3 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-herbie \
		$(cabal_flag template-haskell template-haskell)
}
