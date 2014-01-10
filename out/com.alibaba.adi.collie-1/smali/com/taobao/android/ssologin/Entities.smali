.class public Lcom/taobao/android/ssologin/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# static fields
.field private static final APOS_SET:[[Ljava/lang/String; = null

.field private static final BASIC_SET:[[Ljava/lang/String; = null

.field public static final HTML32:Lcom/taobao/android/ssologin/Entities; = null

.field public static final HTML40:Lcom/taobao/android/ssologin/Entities; = null

.field private static final HTML40_SET:[[Ljava/lang/String; = null

.field private static final ISO_8859_1_SET:[[Ljava/lang/String; = null

.field private static final LOOKUP_TABLE_SIZE:I = 0x100

.field public static final XML:Lcom/taobao/android/ssologin/Entities;


# instance fields
.field private entityNameToValue:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private entityValueToName:Lcom/taobao/android/ssologin/IntHashMap;

.field private lookupTable:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    new-array v0, v8, [[Ljava/lang/String;

    .line 33
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "quot"

    aput-object v2, v1, v4

    const-string v2, "34"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 34
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "amp"

    aput-object v2, v1, v4

    const-string v2, "38"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 35
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "lt"

    aput-object v2, v1, v4

    const-string v2, "60"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 36
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "gt"

    aput-object v2, v1, v4

    const-string v2, "62"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    .line 32
    sput-object v0, Lcom/taobao/android/ssologin/Entities;->BASIC_SET:[[Ljava/lang/String;

    .line 40
    new-array v0, v5, [[Ljava/lang/String;

    .line 41
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "apos"

    aput-object v2, v1, v4

    const-string v2, "39"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 40
    sput-object v0, Lcom/taobao/android/ssologin/Entities;->APOS_SET:[[Ljava/lang/String;

    .line 45
    const/16 v0, 0x60

    new-array v0, v0, [[Ljava/lang/String;

    .line 46
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "nbsp"

    aput-object v2, v1, v4

    const-string v2, "160"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 47
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "iexcl"

    aput-object v2, v1, v4

    const-string v2, "161"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 48
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "cent"

    aput-object v2, v1, v4

    const-string v2, "162"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 49
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "pound"

    aput-object v2, v1, v4

    const-string v2, "163"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    .line 50
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "curren"

    aput-object v2, v1, v4

    const-string v2, "164"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 51
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "yen"

    aput-object v3, v2, v4

    const-string v3, "165"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 52
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "brvbar"

    aput-object v3, v2, v4

    const-string v3, "166"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 53
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sect"

    aput-object v3, v2, v4

    const-string v3, "167"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 54
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uml"

    aput-object v3, v2, v4

    const-string v3, "168"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 55
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "copy"

    aput-object v3, v2, v4

    const-string v3, "169"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 56
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ordf"

    aput-object v3, v2, v4

    const-string v3, "170"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 57
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "laquo"

    aput-object v3, v2, v4

    const-string v3, "171"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 58
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "not"

    aput-object v3, v2, v4

    const-string v3, "172"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 59
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "shy"

    aput-object v3, v2, v4

    const-string v3, "173"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 60
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "reg"

    aput-object v3, v2, v4

    const-string v3, "174"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 61
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "macr"

    aput-object v3, v2, v4

    const-string v3, "175"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 62
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "deg"

    aput-object v3, v2, v4

    const-string v3, "176"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 63
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "plusmn"

    aput-object v3, v2, v4

    const-string v3, "177"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 64
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sup2"

    aput-object v3, v2, v4

    const-string v3, "178"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 65
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sup3"

    aput-object v3, v2, v4

    const-string v3, "179"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 66
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "acute"

    aput-object v3, v2, v4

    const-string v3, "180"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 67
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "micro"

    aput-object v3, v2, v4

    const-string v3, "181"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 68
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "para"

    aput-object v3, v2, v4

    const-string v3, "182"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 69
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "middot"

    aput-object v3, v2, v4

    const-string v3, "183"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 70
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cedil"

    aput-object v3, v2, v4

    const-string v3, "184"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 71
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sup1"

    aput-object v3, v2, v4

    const-string v3, "185"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 72
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ordm"

    aput-object v3, v2, v4

    const-string v3, "186"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 73
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "raquo"

    aput-object v3, v2, v4

    const-string v3, "187"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 74
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "frac14"

    aput-object v3, v2, v4

    const-string v3, "188"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 75
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "frac12"

    aput-object v3, v2, v4

    const-string v3, "189"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 76
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "frac34"

    aput-object v3, v2, v4

    const-string v3, "190"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 77
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iquest"

    aput-object v3, v2, v4

    const-string v3, "191"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 78
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Agrave"

    aput-object v3, v2, v4

    const-string v3, "192"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 79
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Aacute"

    aput-object v3, v2, v4

    const-string v3, "193"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 80
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Acirc"

    aput-object v3, v2, v4

    const-string v3, "194"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 81
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Atilde"

    aput-object v3, v2, v4

    const-string v3, "195"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 82
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Auml"

    aput-object v3, v2, v4

    const-string v3, "196"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 83
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Aring"

    aput-object v3, v2, v4

    const-string v3, "197"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 84
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AElig"

    aput-object v3, v2, v4

    const-string v3, "198"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 85
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ccedil"

    aput-object v3, v2, v4

    const-string v3, "199"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 86
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Egrave"

    aput-object v3, v2, v4

    const-string v3, "200"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 87
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Eacute"

    aput-object v3, v2, v4

    const-string v3, "201"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 88
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ecirc"

    aput-object v3, v2, v4

    const-string v3, "202"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 89
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Euml"

    aput-object v3, v2, v4

    const-string v3, "203"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 90
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Igrave"

    aput-object v3, v2, v4

    const-string v3, "204"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 91
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Iacute"

    aput-object v3, v2, v4

    const-string v3, "205"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 92
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Icirc"

    aput-object v3, v2, v4

    const-string v3, "206"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 93
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Iuml"

    aput-object v3, v2, v4

    const-string v3, "207"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 94
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ETH"

    aput-object v3, v2, v4

    const-string v3, "208"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 95
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ntilde"

    aput-object v3, v2, v4

    const-string v3, "209"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 96
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ograve"

    aput-object v3, v2, v4

    const-string v3, "210"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 97
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Oacute"

    aput-object v3, v2, v4

    const-string v3, "211"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 98
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ocirc"

    aput-object v3, v2, v4

    const-string v3, "212"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 99
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Otilde"

    aput-object v3, v2, v4

    const-string v3, "213"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 100
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ouml"

    aput-object v3, v2, v4

    const-string v3, "214"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 101
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "times"

    aput-object v3, v2, v4

    const-string v3, "215"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 102
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Oslash"

    aput-object v3, v2, v4

    const-string v3, "216"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 103
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ugrave"

    aput-object v3, v2, v4

    const-string v3, "217"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 104
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Uacute"

    aput-object v3, v2, v4

    const-string v3, "218"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 105
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ucirc"

    aput-object v3, v2, v4

    const-string v3, "219"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 106
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Uuml"

    aput-object v3, v2, v4

    const-string v3, "220"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 107
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Yacute"

    aput-object v3, v2, v4

    const-string v3, "221"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 108
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "THORN"

    aput-object v3, v2, v4

    const-string v3, "222"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 109
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "szlig"

    aput-object v3, v2, v4

    const-string v3, "223"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 110
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "agrave"

    aput-object v3, v2, v4

    const-string v3, "224"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 111
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aacute"

    aput-object v3, v2, v4

    const-string v3, "225"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 112
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "acirc"

    aput-object v3, v2, v4

    const-string v3, "226"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 113
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "atilde"

    aput-object v3, v2, v4

    const-string v3, "227"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 114
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "auml"

    aput-object v3, v2, v4

    const-string v3, "228"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 115
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aring"

    aput-object v3, v2, v4

    const-string v3, "229"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 116
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aelig"

    aput-object v3, v2, v4

    const-string v3, "230"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 117
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ccedil"

    aput-object v3, v2, v4

    const-string v3, "231"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 118
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "egrave"

    aput-object v3, v2, v4

    const-string v3, "232"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 119
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "eacute"

    aput-object v3, v2, v4

    const-string v3, "233"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 120
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ecirc"

    aput-object v3, v2, v4

    const-string v3, "234"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 121
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "euml"

    aput-object v3, v2, v4

    const-string v3, "235"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 122
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "igrave"

    aput-object v3, v2, v4

    const-string v3, "236"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 123
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iacute"

    aput-object v3, v2, v4

    const-string v3, "237"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 124
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "icirc"

    aput-object v3, v2, v4

    const-string v3, "238"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 125
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iuml"

    aput-object v3, v2, v4

    const-string v3, "239"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 126
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "eth"

    aput-object v3, v2, v4

    const-string v3, "240"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 127
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ntilde"

    aput-object v3, v2, v4

    const-string v3, "241"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 128
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ograve"

    aput-object v3, v2, v4

    const-string v3, "242"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 129
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oacute"

    aput-object v3, v2, v4

    const-string v3, "243"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 130
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ocirc"

    aput-object v3, v2, v4

    const-string v3, "244"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 131
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "otilde"

    aput-object v3, v2, v4

    const-string v3, "245"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 132
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ouml"

    aput-object v3, v2, v4

    const-string v3, "246"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 133
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "divide"

    aput-object v3, v2, v4

    const-string v3, "247"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 134
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oslash"

    aput-object v3, v2, v4

    const-string v3, "248"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 135
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ugrave"

    aput-object v3, v2, v4

    const-string v3, "249"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 136
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uacute"

    aput-object v3, v2, v4

    const-string v3, "250"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 137
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ucirc"

    aput-object v3, v2, v4

    const-string v3, "251"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 138
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuml"

    aput-object v3, v2, v4

    const-string v3, "252"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 139
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "yacute"

    aput-object v3, v2, v4

    const-string v3, "253"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 140
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "thorn"

    aput-object v3, v2, v4

    const-string v3, "254"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 141
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "yuml"

    aput-object v3, v2, v4

    const-string v3, "255"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 45
    sput-object v0, Lcom/taobao/android/ssologin/Entities;->ISO_8859_1_SET:[[Ljava/lang/String;

    .line 145
    const/16 v0, 0x97

    new-array v0, v0, [[Ljava/lang/String;

    .line 146
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "fnof"

    aput-object v2, v1, v4

    const-string v2, "402"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 147
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Alpha"

    aput-object v2, v1, v4

    const-string v2, "913"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 148
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Beta"

    aput-object v2, v1, v4

    const-string v2, "914"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 149
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Gamma"

    aput-object v2, v1, v4

    const-string v2, "915"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    .line 150
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Delta"

    aput-object v2, v1, v4

    const-string v2, "916"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 151
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Epsilon"

    aput-object v3, v2, v4

    const-string v3, "917"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 152
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Zeta"

    aput-object v3, v2, v4

    const-string v3, "918"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 153
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Eta"

    aput-object v3, v2, v4

    const-string v3, "919"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 154
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Theta"

    aput-object v3, v2, v4

    const-string v3, "920"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 155
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Iota"

    aput-object v3, v2, v4

    const-string v3, "921"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 156
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Kappa"

    aput-object v3, v2, v4

    const-string v3, "922"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 157
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Lambda"

    aput-object v3, v2, v4

    const-string v3, "923"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 158
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Mu"

    aput-object v3, v2, v4

    const-string v3, "924"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 159
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Nu"

    aput-object v3, v2, v4

    const-string v3, "925"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 160
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Xi"

    aput-object v3, v2, v4

    const-string v3, "926"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 161
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Omicron"

    aput-object v3, v2, v4

    const-string v3, "927"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 162
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Pi"

    aput-object v3, v2, v4

    const-string v3, "928"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 163
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Rho"

    aput-object v3, v2, v4

    const-string v3, "929"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 164
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Sigma"

    aput-object v3, v2, v4

    const-string v3, "931"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 165
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Tau"

    aput-object v3, v2, v4

    const-string v3, "932"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 166
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Upsilon"

    aput-object v3, v2, v4

    const-string v3, "933"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 167
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Phi"

    aput-object v3, v2, v4

    const-string v3, "934"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 168
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Chi"

    aput-object v3, v2, v4

    const-string v3, "935"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 169
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Psi"

    aput-object v3, v2, v4

    const-string v3, "936"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 170
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Omega"

    aput-object v3, v2, v4

    const-string v3, "937"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 171
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "alpha"

    aput-object v3, v2, v4

    const-string v3, "945"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 172
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "beta"

    aput-object v3, v2, v4

    const-string v3, "946"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 173
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gamma"

    aput-object v3, v2, v4

    const-string v3, "947"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 174
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "delta"

    aput-object v3, v2, v4

    const-string v3, "948"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 175
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "epsilon"

    aput-object v3, v2, v4

    const-string v3, "949"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 176
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zeta"

    aput-object v3, v2, v4

    const-string v3, "950"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 177
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "eta"

    aput-object v3, v2, v4

    const-string v3, "951"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 178
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "theta"

    aput-object v3, v2, v4

    const-string v3, "952"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 179
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iota"

    aput-object v3, v2, v4

    const-string v3, "953"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 180
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kappa"

    aput-object v3, v2, v4

    const-string v3, "954"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 181
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lambda"

    aput-object v3, v2, v4

    const-string v3, "955"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 182
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mu"

    aput-object v3, v2, v4

    const-string v3, "956"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 183
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nu"

    aput-object v3, v2, v4

    const-string v3, "957"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 184
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xi"

    aput-object v3, v2, v4

    const-string v3, "958"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 185
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "omicron"

    aput-object v3, v2, v4

    const-string v3, "959"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 186
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pi"

    aput-object v3, v2, v4

    const-string v3, "960"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 187
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rho"

    aput-object v3, v2, v4

    const-string v3, "961"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 188
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sigmaf"

    aput-object v3, v2, v4

    const-string v3, "962"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 189
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sigma"

    aput-object v3, v2, v4

    const-string v3, "963"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 190
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tau"

    aput-object v3, v2, v4

    const-string v3, "964"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 191
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "upsilon"

    aput-object v3, v2, v4

    const-string v3, "965"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 192
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "phi"

    aput-object v3, v2, v4

    const-string v3, "966"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 193
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "chi"

    aput-object v3, v2, v4

    const-string v3, "967"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 194
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "psi"

    aput-object v3, v2, v4

    const-string v3, "968"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 195
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "omega"

    aput-object v3, v2, v4

    const-string v3, "969"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 196
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "thetasym"

    aput-object v3, v2, v4

    const-string v3, "977"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 197
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "upsih"

    aput-object v3, v2, v4

    const-string v3, "978"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 198
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "piv"

    aput-object v3, v2, v4

    const-string v3, "982"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 199
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bull"

    aput-object v3, v2, v4

    const-string v3, "8226"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 200
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hellip"

    aput-object v3, v2, v4

    const-string v3, "8230"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 201
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "prime"

    aput-object v3, v2, v4

    const-string v3, "8242"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 202
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Prime"

    aput-object v3, v2, v4

    const-string v3, "8243"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 203
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oline"

    aput-object v3, v2, v4

    const-string v3, "8254"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 204
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "frasl"

    aput-object v3, v2, v4

    const-string v3, "8260"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 205
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "weierp"

    aput-object v3, v2, v4

    const-string v3, "8472"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 206
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "image"

    aput-object v3, v2, v4

    const-string v3, "8465"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 207
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "real"

    aput-object v3, v2, v4

    const-string v3, "8476"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 208
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "trade"

    aput-object v3, v2, v4

    const-string v3, "8482"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 209
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "alefsym"

    aput-object v3, v2, v4

    const-string v3, "8501"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 210
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "larr"

    aput-object v3, v2, v4

    const-string v3, "8592"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 211
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uarr"

    aput-object v3, v2, v4

    const-string v3, "8593"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 212
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rarr"

    aput-object v3, v2, v4

    const-string v3, "8594"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 213
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "darr"

    aput-object v3, v2, v4

    const-string v3, "8595"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 214
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "harr"

    aput-object v3, v2, v4

    const-string v3, "8596"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 215
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "crarr"

    aput-object v3, v2, v4

    const-string v3, "8629"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 216
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lArr"

    aput-object v3, v2, v4

    const-string v3, "8656"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 217
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uArr"

    aput-object v3, v2, v4

    const-string v3, "8657"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 218
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rArr"

    aput-object v3, v2, v4

    const-string v3, "8658"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 219
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dArr"

    aput-object v3, v2, v4

    const-string v3, "8659"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 220
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hArr"

    aput-object v3, v2, v4

    const-string v3, "8660"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 221
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "forall"

    aput-object v3, v2, v4

    const-string v3, "8704"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 222
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "part"

    aput-object v3, v2, v4

    const-string v3, "8706"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 223
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "exist"

    aput-object v3, v2, v4

    const-string v3, "8707"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 224
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "empty"

    aput-object v3, v2, v4

    const-string v3, "8709"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 225
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nabla"

    aput-object v3, v2, v4

    const-string v3, "8711"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 226
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isin"

    aput-object v3, v2, v4

    const-string v3, "8712"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 227
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "notin"

    aput-object v3, v2, v4

    const-string v3, "8713"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 228
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ni"

    aput-object v3, v2, v4

    const-string v3, "8715"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 229
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "prod"

    aput-object v3, v2, v4

    const-string v3, "8719"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 230
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sum"

    aput-object v3, v2, v4

    const-string v3, "8721"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 231
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "minus"

    aput-object v3, v2, v4

    const-string v3, "8722"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 232
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lowast"

    aput-object v3, v2, v4

    const-string v3, "8727"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 233
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "radic"

    aput-object v3, v2, v4

    const-string v3, "8730"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 234
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "prop"

    aput-object v3, v2, v4

    const-string v3, "8733"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 235
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "infin"

    aput-object v3, v2, v4

    const-string v3, "8734"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 236
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ang"

    aput-object v3, v2, v4

    const-string v3, "8736"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 237
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "and"

    aput-object v3, v2, v4

    const-string v3, "8743"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 238
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "or"

    aput-object v3, v2, v4

    const-string v3, "8744"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 239
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cap"

    aput-object v3, v2, v4

    const-string v3, "8745"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 240
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cup"

    aput-object v3, v2, v4

    const-string v3, "8746"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 241
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "int"

    aput-object v3, v2, v4

    const-string v3, "8747"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 242
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "there4"

    aput-object v3, v2, v4

    const-string v3, "8756"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 243
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sim"

    aput-object v3, v2, v4

    const-string v3, "8764"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 244
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cong"

    aput-object v3, v2, v4

    const-string v3, "8773"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 245
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asymp"

    aput-object v3, v2, v4

    const-string v3, "8776"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 246
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ne"

    aput-object v3, v2, v4

    const-string v3, "8800"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 247
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "equiv"

    aput-object v3, v2, v4

    const-string v3, "8801"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 248
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "le"

    aput-object v3, v2, v4

    const-string v3, "8804"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 249
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ge"

    aput-object v3, v2, v4

    const-string v3, "8805"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 250
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sub"

    aput-object v3, v2, v4

    const-string v3, "8834"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 251
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sup"

    aput-object v3, v2, v4

    const-string v3, "8835"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 252
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sube"

    aput-object v3, v2, v4

    const-string v3, "8838"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    .line 253
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "supe"

    aput-object v3, v2, v4

    const-string v3, "8839"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    .line 254
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oplus"

    aput-object v3, v2, v4

    const-string v3, "8853"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 255
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "otimes"

    aput-object v3, v2, v4

    const-string v3, "8855"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 256
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "perp"

    aput-object v3, v2, v4

    const-string v3, "8869"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    .line 257
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sdot"

    aput-object v3, v2, v4

    const-string v3, "8901"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 258
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lceil"

    aput-object v3, v2, v4

    const-string v3, "8968"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 259
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rceil"

    aput-object v3, v2, v4

    const-string v3, "8969"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 260
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lfloor"

    aput-object v3, v2, v4

    const-string v3, "8970"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    .line 261
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rfloor"

    aput-object v3, v2, v4

    const-string v3, "8971"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    .line 262
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lang"

    aput-object v3, v2, v4

    const-string v3, "9001"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    .line 263
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rang"

    aput-object v3, v2, v4

    const-string v3, "9002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    .line 264
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "loz"

    aput-object v3, v2, v4

    const-string v3, "9674"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 265
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "spades"

    aput-object v3, v2, v4

    const-string v3, "9824"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 266
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "clubs"

    aput-object v3, v2, v4

    const-string v3, "9827"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    .line 267
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hearts"

    aput-object v3, v2, v4

    const-string v3, "9829"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 268
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "diams"

    aput-object v3, v2, v4

    const-string v3, "9830"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 269
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "OElig"

    aput-object v3, v2, v4

    const-string v3, "338"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    .line 270
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oelig"

    aput-object v3, v2, v4

    const-string v3, "339"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    .line 271
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Scaron"

    aput-object v3, v2, v4

    const-string v3, "352"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    .line 272
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "scaron"

    aput-object v3, v2, v4

    const-string v3, "353"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    .line 273
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Yuml"

    aput-object v3, v2, v4

    const-string v3, "376"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 274
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "circ"

    aput-object v3, v2, v4

    const-string v3, "710"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    .line 275
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tilde"

    aput-object v3, v2, v4

    const-string v3, "732"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 276
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ensp"

    aput-object v3, v2, v4

    const-string v3, "8194"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    .line 277
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "emsp"

    aput-object v3, v2, v4

    const-string v3, "8195"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    .line 278
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "thinsp"

    aput-object v3, v2, v4

    const-string v3, "8201"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    .line 279
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zwnj"

    aput-object v3, v2, v4

    const-string v3, "8204"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    .line 280
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zwj"

    aput-object v3, v2, v4

    const-string v3, "8205"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 281
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lrm"

    aput-object v3, v2, v4

    const-string v3, "8206"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 282
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rlm"

    aput-object v3, v2, v4

    const-string v3, "8207"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    .line 283
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ndash"

    aput-object v3, v2, v4

    const-string v3, "8211"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    .line 284
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mdash"

    aput-object v3, v2, v4

    const-string v3, "8212"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 285
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lsquo"

    aput-object v3, v2, v4

    const-string v3, "8216"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 286
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rsquo"

    aput-object v3, v2, v4

    const-string v3, "8217"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    .line 287
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sbquo"

    aput-object v3, v2, v4

    const-string v3, "8218"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    .line 288
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ldquo"

    aput-object v3, v2, v4

    const-string v3, "8220"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    .line 289
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rdquo"

    aput-object v3, v2, v4

    const-string v3, "8221"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    .line 290
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bdquo"

    aput-object v3, v2, v4

    const-string v3, "8222"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    .line 291
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dagger"

    aput-object v3, v2, v4

    const-string v3, "8224"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    .line 292
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Dagger"

    aput-object v3, v2, v4

    const-string v3, "8225"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    .line 293
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "permil"

    aput-object v3, v2, v4

    const-string v3, "8240"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    .line 294
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lsaquo"

    aput-object v3, v2, v4

    const-string v3, "8249"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    .line 295
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rsaquo"

    aput-object v3, v2, v4

    const-string v3, "8250"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    .line 296
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "euro"

    aput-object v3, v2, v4

    const-string v3, "8364"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 145
    sput-object v0, Lcom/taobao/android/ssologin/Entities;->HTML40_SET:[[Ljava/lang/String;

    .line 312
    new-instance v0, Lcom/taobao/android/ssologin/Entities;

    invoke-direct {v0}, Lcom/taobao/android/ssologin/Entities;-><init>()V

    sput-object v0, Lcom/taobao/android/ssologin/Entities;->XML:Lcom/taobao/android/ssologin/Entities;

    .line 313
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->XML:Lcom/taobao/android/ssologin/Entities;

    sget-object v1, Lcom/taobao/android/ssologin/Entities;->BASIC_SET:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologin/Entities;->addEntities([[Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->XML:Lcom/taobao/android/ssologin/Entities;

    sget-object v1, Lcom/taobao/android/ssologin/Entities;->APOS_SET:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologin/Entities;->addEntities([[Ljava/lang/String;)V

    .line 316
    new-instance v0, Lcom/taobao/android/ssologin/Entities;

    invoke-direct {v0}, Lcom/taobao/android/ssologin/Entities;-><init>()V

    sput-object v0, Lcom/taobao/android/ssologin/Entities;->HTML32:Lcom/taobao/android/ssologin/Entities;

    .line 317
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->HTML32:Lcom/taobao/android/ssologin/Entities;

    sget-object v1, Lcom/taobao/android/ssologin/Entities;->BASIC_SET:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologin/Entities;->addEntities([[Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->HTML32:Lcom/taobao/android/ssologin/Entities;

    sget-object v1, Lcom/taobao/android/ssologin/Entities;->ISO_8859_1_SET:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologin/Entities;->addEntities([[Ljava/lang/String;)V

    .line 320
    new-instance v0, Lcom/taobao/android/ssologin/Entities;

    invoke-direct {v0}, Lcom/taobao/android/ssologin/Entities;-><init>()V

    sput-object v0, Lcom/taobao/android/ssologin/Entities;->HTML40:Lcom/taobao/android/ssologin/Entities;

    .line 321
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->HTML40:Lcom/taobao/android/ssologin/Entities;

    sget-object v1, Lcom/taobao/android/ssologin/Entities;->BASIC_SET:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologin/Entities;->addEntities([[Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->HTML40:Lcom/taobao/android/ssologin/Entities;

    sget-object v1, Lcom/taobao/android/ssologin/Entities;->ISO_8859_1_SET:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologin/Entities;->addEntities([[Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->HTML40:Lcom/taobao/android/ssologin/Entities;

    sget-object v1, Lcom/taobao/android/ssologin/Entities;->HTML40_SET:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologin/Entities;->addEntities([[Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ssologin/Entities;->entityNameToValue:Ljava/util/Hashtable;

    .line 333
    new-instance v0, Lcom/taobao/android/ssologin/IntHashMap;

    invoke-direct {v0}, Lcom/taobao/android/ssologin/IntHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ssologin/Entities;->entityValueToName:Lcom/taobao/android/ssologin/IntHashMap;

    .line 26
    return-void
.end method


# virtual methods
.method public addEntities([[Ljava/lang/String;)V
    .locals 4
    .parameter "entitySet"

    .prologue
    .line 342
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 345
    return-void

    .line 343
    :cond_0
    aget-object v1, p1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/taobao/android/ssologin/Entities;->addEntity(Ljava/lang/String;I)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addEntity(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/taobao/android/ssologin/Entities;->entityNameToValue:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/taobao/android/ssologin/Entities;->entityValueToName:Lcom/taobao/android/ssologin/IntHashMap;

    invoke-virtual {v0, p2, p1}, Lcom/taobao/android/ssologin/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 358
    const/16 v0, 0x100

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologin/Entities;->lookupTable:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/taobao/android/ssologin/Entities;->lookupTable:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 361
    :cond_0
    return-void
.end method

.method public getEntityName(I)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    const/16 v3, 0x100

    .line 371
    if-ge p1, v3, :cond_2

    .line 373
    iget-object v1, p0, Lcom/taobao/android/ssologin/Entities;->lookupTable:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 374
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/android/ssologin/Entities;->lookupTable:[Ljava/lang/String;

    .line 376
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 381
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/ssologin/Entities;->lookupTable:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 384
    :goto_1
    return-object v1

    .line 377
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/taobao/android/ssologin/Entities;->lookupTable:[Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/android/ssologin/Entities;->entityValueToName:Lcom/taobao/android/ssologin/IntHashMap;

    invoke-virtual {v1, v0}, Lcom/taobao/android/ssologin/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    .end local v0           #i:I
    :cond_2
    iget-object v1, p0, Lcom/taobao/android/ssologin/Entities;->entityValueToName:Lcom/taobao/android/ssologin/IntHashMap;

    invoke-virtual {v1, p1}, Lcom/taobao/android/ssologin/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method public getEntityValue(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/taobao/android/ssologin/Entities;->entityNameToValue:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 397
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 398
    const/4 v1, -0x1

    .line 401
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
