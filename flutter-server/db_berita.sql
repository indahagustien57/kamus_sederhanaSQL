-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Agu 2020 pada 14.13
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_berita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(125) NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tgl_berita` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `judul`, `isi`, `foto`, `tgl_berita`) VALUES
(0, 'berita corona hari ini ', 'jumlah data corona mencapai 1000 viewss', 'okeeeeeeeeeeeeeeeeeeee', '2020-08-17 11:58:32'),
(0, 'berita happy happy', 'hari ini saya happy \r\nkarena saya mulai paham dengan database ckckcckkc', 'happpy bangetttt', '2020-08-18 11:58:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kamus`
--

CREATE TABLE `tb_kamus` (
  `id` int(11) NOT NULL,
  `kosakata` varchar(125) NOT NULL,
  `definisi` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kamus`
--

INSERT INTO `tb_kamus` (`id`, `kosakata`, `definisi`, `foto`) VALUES
(0, 'absolute alcohol', 'common name for high purity ethanol or ethyl alcohol.', ''),
(0, 'absorbance', 'measure of the amount of light absorbed by a sample.', ''),
(0, 'absorption ', 'process by which atoms, ions, or molecules enter a bulk phase.', ''),
(0, 'acid', 'a chemical species that accepts electrons or donate protons or hydrogen ions', ''),
(0, 'actinides', 'Usually, the actinides are considered to be elements 90 (thorium) through 103 (lawrencium). Otherwise, the actinides are defined according to their common properties.', ''),
(0, 'alcohol', 'a substance that contains an -OH group attached to a hydrocarbon.', ''),
(0, 'base', 'chemical species that either accepts protons or else donates electrons or hydroxide ions.', ''),
(0, 'berkelium', 'radioactive metal with element symbol Bk and atomic number 97.', ''),
(0, 'biochemistry', 'Biochemistry is the chemistry of living things', ''),
(0, 'bitumen', 'natural mixture of polycyclic aromatic hydrocarbons (PAHs).', ''),
(0, 'bromine', 'Bromine is the name for the element with atomic number 35 and is represented by the symbol Br. It is a member of the halogen group.', ''),
(0, 'Cadmium', 'Cadmium is the name for the element with atomic number 48 and is represented by the symbol Cd. It is a member of the transition metals group.', ''),
(0, 'catalyst', 'substance that increases the chemical reaction rate by decreasing its activation energy.', ''),
(0, 'Cesium', ' Cesium is the name for the element with atomic number 55 and is represented by the symbol Cs. It is a member of the alkali metal group.', ''),
(0, 'colloid', 'a homogenous mixture in which dispersed particles do not settle out.', ''),
(0, 'decantation', 'method of separating mixtures by removing the liquid layer from a precipitate.', ''),
(0, 'deflagration', 'type of combustion in which flame propagation is less than 100 m/s and overpressure is less than 0.5 bar.', ''),
(0, 'deliquescence', 'process by which a soluble substance picks up water vapor from the atmosphere to form a solution.', ''),
(0, 'density', 'mass per unit volume.', ''),
(0, 'deposition', 'settling of sediment or particles onto a surface or the phase change from the vapor to solid phase.', ''),
(0, 'effusion', 'movement of gas through a pore or capillary into a vacuum or another gas.', ''),
(0, 'Einsteinium', 'Einsteinium is the name for the element with atomic number 99 and is represented by the symbol Es. It is a member of the actinide group.', ''),
(0, 'elasticity', 'physical property of matter describing the ability to return to original shape after deformation.', ''),
(0, 'electrochemistry', 'scientific study of reactions and species formed at the interface between an electrolyte and a conductor, where electron transfer occurs.', ''),
(0, 'fluid', 'a substance that flows under applied shear stress, including liquids, gases, and plasma.', ''),
(0, 'foam', 'a substance containing gas bubbles trapped within a liquid or solid.', ''),
(0, 'francium', 'alkali metal with element symbol Fr and atomic number 87.', ''),
(0, 'freezing', ' process in which a liquid changes to a solid.', ''),
(0, 'gadolinium', 'rare earth metal with element symbol Gd and atomic number 64.', ''),
(0, 'gallium', 'metal with element symbol Ga and atomic number 31.', ''),
(0, 'gas', 'state of matter characterized by having neither a defined shape nor defined volume.', ''),
(0, 'gel', ' a type of sol where the solid particles are held in a mesh to form a rigid or semi-rigid mixture.', ''),
(0, 'hafnium', 'transition metal with element symbol Hf and atomic number 72.', ''),
(0, 'halogen', 'an element in Group VIIA of the periodic table (e.g., Br, Cl).', ''),
(0, 'hassium', 'transition metal that is atomic number 108 with element symbol Hs.', ''),
(0, 'helium', 'Helium is the name for the element with atomic number 2 and is represented by the symbol He. It is a member of the noble gases group.', ''),
(0, 'ion', 'atom or molecule which has a different number of protons than electrons and thus a net electrical charge.', ''),
(0, 'iridium', 'Iridium is the name for the element with atomic number 77 and is represented by the symbol Ir. It is a member of the transition metals group.', ''),
(0, 'iron', ' Iron is the name for the element with atomic number 26 and is represented by the symbol Fe. It is a member of the transition metals group.', ''),
(0, 'isomer', 'chemical species with the same number and type of atoms as another species, but a different arrangement and thus different properties.', ''),
(0, 'joule', ' SI unit of energy equal to the kinetic energy of a 1 kg mass moving at 1 m/s.', ''),
(0, 'keratin', 'a fibrous protein produced by chordates. It may be found in hair, skin, claws, and wool.', ''),
(0, 'ketone', 'compound containing a carbonyl functional group (C=O) between two groups of atoms', ''),
(0, 'krypton', 'element 36 on the periodic table with symbol Kr.', ''),
(0, 'Lanthanum', 'element atomic number 57 with element symbol La.', ''),
(0, 'lead', 'metal with element symbol Pb and atomic number 82.', ''),
(0, 'ligand', ' a chemical species that donates or shares at least one electron via a covalent bond with a central ion or atom.', ''),
(0, 'lipid', 'class of fat-soluble molecules, also known as oils and fats', ''),
(0, 'magnesium', ' Magnesium is the name for the element with atomic number 12 and is represented by the symbol Mg. Magnesium is an alkaline earth metal.', ''),
(0, 'manganese', 'element with atomic number 25 and element symbol Mn.', ''),
(0, 'manometer', 'device used to measure gas pressure.', ''),
(0, 'mass', 'amount of matter a substance contains or property of matter that resists acceleration.', ''),
(0, 'neon', 'noble gas with element symbol Ne and atomic number 10.', ''),
(0, 'neptunium', 'actinide with element symbol Np and atomic number 94.', ''),
(0, 'neutron', 'particle in the atomic nucleus that has a mass of 1 and charge of 0.', ''),
(0, 'newton', ' SI unit of force equal to the amount of force needed to accelerate a 1 kg mass 1 m/sec2.', ''),
(0, 'octet', 'group of 8 valence electrons around an atom.', ''),
(0, 'orbital', 'mathematical function that describes the wavelike behavior of an electron.', ''),
(0, 'osmium', ' Osmium is the name for the element with atomic number 76 and is represented by the symbol Os. It is a member of the transition metal group.', ''),
(0, 'osmosis', 'movement of solvent molecules across a semipermeable membrane from a dilute solution to a more concentrated solution, thus diluting it and equalizing concentration on both sides of the membrane.', ''),
(0, 'polonium', 'element atomic number 84 with element symbol Po.', ''),
(0, 'polymer', ' large molecule made of rings or chains of repeated monomer subunits.', ''),
(0, 'positron', 'the antimatter counterpart to an electron, which has a charge of +1.', ''),
(0, 'potassium', 'alkali metal with element symbol K and atomic number 19.', ''),
(0, 'quantum', ' a discrete packet of matter or energy, plural is quanta', ''),
(0, 'residue', 'matter remaining after evaporation or distillation or an undesirable reaction byproduct or a recognizable portion of a larger molecule.', ''),
(0, 'resonance', 'average of two or more Lewis structure, differing in the position of electrons.', ''),
(0, 'rhenium', 'transition metal with atomic number 75 and element symbol Re.', ''),
(0, 'salt', 'ionic compound formed by reacting an acid and a base; sometimes refers only to sodium chloride, NaCl.', ''),
(0, 'samarium', 'rare earth element with atomic number 62 and element symbol Sm.', ''),
(0, 'saponification', 'reaction between triglycerides and either sodium hydroxide or potassium hydroxide to form a fatty acid salt called soap and glycerol.', ''),
(0, 'saturated', 'either a substance in which all atoms are linked by single bonds, a solution that contains maximum dissolved solute concentration, or a thoroughly wetted material.', ''),
(0, 'selenium', 'nonmetal with element symbol Se and atomic number 34.', ''),
(0, 'sodium', ' Sodium is the name for the element with atomic number 11 and is represented by the symbol Na.', ''),
(0, 'terbium', 'rare earth element with symbol Tb and atomic number 65.', ''),
(0, 'thallium', 'metal with atomic number 81 and element symbol Tl.', ''),
(0, 'thiol', 'an organic sulfur compound consisting of an alkyl or aryl group and a sulfur-hydrogen group; R-SH.', ''),
(0, 'thorium', ' Thorium is the name for the element with atomic number 90 and is represented by the symbol Th.', ''),
(0, 'unit', 'a standard used for comparison in measurements.', ''),
(0, 'unsaturated', 'either refers to a solution that can dissolve more solute or to an organic compound containing double or triple carbon-carbon bonds.', ''),
(0, 'uranium', 'element 92 with symbol U.', ''),
(0, 'vacuum', 'a volume containing little to no matter (no pressure).', ''),
(0, 'valence', 'number of electrons needed to fill the outermost electron shell.', ''),
(0, 'vanadium', ' Vanadium is the name for the element with atomic number 23 and is represented by the symbol V. It is a member of the transition metals group.', ''),
(0, 'water', 'a compound formed by one oxygen atom and two hydrogen atoms. Usually this refers to the liquid form of the molecule.', ''),
(0, 'wavefunction', 'a function that describes the probability of the quantum state of a particle in terms of spin, time, position, and/or momentum.', ''),
(0, 'wax', 'a lipid consisting of chains of esters or alkanes derived from fatty acids and alcohols.', ''),
(0, 'weight', 'the force on a mass due to the acceleration of gravity (mass multiplied by acceleration).', ''),
(0, 'xenon', 'Xenon is an element with an atomic number of 54 and atomic weight of 131.29. It is an odorless inert gas that is used to fill cathode ray tubes.', ''),
(0, 'xrays', 'X-rays are light rays with a wavelength from 0.01 to 1.0 nanometers. Also Known As: X radiation', ''),
(0, 'yield', 'In chemistry, yield refers to the quantity of a product obtained from a chemical reaction. Chemists refer to experimental yield, actual yield, theoretical yield, and percent yield to differentiate between calculated yield values and those actually obtained from a reaction.', ''),
(0, 'ytterbium ', 'Ytterbium is element number 70 with an element symbol Yb.', ''),
(0, 'zinc', 'zinc is the name for the element with atomic number 30 and is represented by the symbol Zn. It is a member of the transition metals group.', ''),
(0, 'Zirconium', 'Zirconium is the name for the element with atomic number 40 and is represented by the symbol Zr. It is a member of the transition metals group.', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(125) NOT NULL,
  `email` varchar(125) NOT NULL,
  `full_name` text NOT NULL,
  `sex` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_daftar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
