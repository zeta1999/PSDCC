%% This takes the output from conf_trends.mat and extracts the information 
% for the 157 query terms that we narrowed down to. We narrowed the dataset
% for the following reasons:
%   * We ruled out all terms that primarily refer to something other than
%   the conference (i.e. FAST, SAT, etc). 
%   * No two terms refer to the same conference (i.e. if we have 'ICML' and
%   'ICML conference', we get rid of 'ICML'
%
%   The result is a set of 157 search terms, each corresponding to a
%   different conference, such that if you do a search for those terms, the
%   CS conference is the first (or one of the first) things returned by the
%   search engine.


load conf_trends.mat

%% Relevant terms:

label = {

    'AAAI conference'
    'AAMAS'
    'ACL conference'
    'ACMMM'
    'ACSAC'
    'AIME conference'
    'ALENEX'
    'ALIFE'
    'AMCIS'
    'AOSD'
    'ASE conference'
    'ASIACRYPT'
    'ASPLOS'
    'ATVA'
    'BPM conference'
    'CaiSE'
    'CCC conference'
    'CCGRID'
    'CCS conference'
    'CGO'
    'CHI'
    'CHI conference'
    'CIKM'
    'CLUSTER conference'
    'COLING'
    'COLT conference'
    'CoNEXT'
    'CoNLL'
    'CoopIS'
    'CSCL'
    'CSCW'
    'CVPR conference'
    'DASFAA'
    'DESRIST'
    'EACL'
    'ECAI'
    'ECCV'
    'ECIS conference'
    'ECML'
    'ECOOP'
    'EDBT'
    'EMNLP'
    'ESEM'
    'ESORICS'
    'Euro Par'
    'EuroCrypt'
    'EuroSpeech'
    'EuroSys'
    'FAST conference'
    'FOCS'
    'FOGA'
    'FOIS'
    'GECCO'
    'GRAPP'
    'HCI conference'
    'HICSS'
    'HiPC'
    'HotOS'
    'HPCA'
    'HPDC'
    'Hypertext'
    'ICALP'
    'ICCAD'
    'ICCS'
    'ICCV'
    'ICDCS'
    'ICDE'
    'ICDM'
    'ICDT'
    'ICFP'
    'ICLP'
    'ICML conference'
    'ICONIP'
    'ICPP'
    'ICS conference'
    'ICSE'
    'ICSM'
    'ICSOC'
    'ICSPC'
    'ICWS'
    'IJCAI'
    'IJCAR'
    'IJCNN'
    'IMC conference'
    'INFOCOM'
    'InfoVis'
    'Interact conference'
    'Interspeech'
    'IPCO'
    'IPDPS'
    'ISCA conference'
    'ISD conference'
    'ISMAR'
    'ISMB'
    'ISMM'
    'ISSAC'
    'ISSRE'
    'ISSTA'
    'ITiCSE'
    'ITS conference'
    'JELIA'
    'K CAP'
    'KDD conference'
    'LICS'
    'LPNMR'
    'MFCS'
    'MICCAI'
    'MOBIHOC'
    'Mobiquitous'
    'NAACL'
    'NCA conference'
    'NDSS'
    'NIPS conference'
    'NOSSDAV'
    'OCIS'
    'OOPSLA'
    'OSDI'
    'PACIS'
    'PACT conference'
    'PAKDD'
    'PERCOM'
    'PKDD'
    'PLDI'
    'PODC'
    'POPL'
    'PPoPP'
    'PPSN'
    'QoSA'
    'RANDOM conference'
    'SAS conference'
    'SAT conference'
    'SCC conference'
    'SDM conference'
    'SIGCOMM'
    'SIGCSE'
    'SIGGRAPH conference'
    'SIGIR'
    'SIGMOD'
    'SOSP'
    'SPAA conference'
    'SSDBM'
    'STOC'
    'TACAS'
    'TCC conference'
    'TEI conference'
    'TPHOLs'
    'TrustCom'
    'UAI'
    'UbiComp'
    'UIST'
    'USENIX'
    'VLDB'
    'VRST'
    'WACV'
    'WICSA'
    'WISE conference'
    'WWW conference'};

% The difference between conf_trends.mat and 157CSconferences is just we
% have narrowed down from 261 conferences to 157 conferences. Also,
% 157Conferences includes the full name of the conference for reference.