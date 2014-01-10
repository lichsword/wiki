.class public Lcom/etao/kakalib/util/TbCdn;
.super Ljava/lang/Object;
.source "TbCdn.java"


# static fields
.field public static final cdsSuffix:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    const-string v2, "_24x24"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 8
    const-string v2, "_30x30"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 9
    const-string v2, "_32x32"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 10
    const-string v2, "_40x40"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 11
    const-string v2, "_60x60"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 12
    const-string v2, "_64x64"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 13
    const-string v2, "_70x70"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 14
    const-string v2, "_80x80"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 15
    const-string v2, "_100x100"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 16
    const-string v2, "_110x110"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 17
    const-string v2, "_120x120"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 18
    const-string v2, "_128x128"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 19
    const-string v2, "_160x160"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 20
    const-string v2, "_170x170"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 21
    const-string v2, "_220x220"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 22
    const-string v2, "_250x250"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 23
    const-string v2, "_300x300"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 24
    const-string v2, "_310x310"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 25
    const-string v2, "_430x430"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 26
    const-string v2, "_670x670"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 27
    const-string v2, "_60x30"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 28
    const-string v2, "_80x40"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 29
    const-string v2, "_80x60"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 30
    const-string v2, "_81x65"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 31
    const-string v2, "_110x90"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 32
    const-string v2, "_620x1000"

    aput-object v2, v0, v1

    .line 6
    sput-object v0, Lcom/etao/kakalib/util/TbCdn;->cdsSuffix:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendingCdnType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter "type"

    .prologue
    .line 36
    if-nez p0, :cond_1

    .line 37
    const/4 p0, 0x0

    .line 40
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 38
    .restart local p0
    :cond_1
    const-string v0, "tbcdn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "taobaocdn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :cond_2
    const-string v0, "%s%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/etao/kakalib/util/TbCdn;->cdsSuffix:[Ljava/lang/String;

    aget-object v3, v3, p1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ".jpg"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
