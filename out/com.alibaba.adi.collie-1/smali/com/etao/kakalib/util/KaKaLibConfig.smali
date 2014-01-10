.class public Lcom/etao/kakalib/util/KaKaLibConfig;
.super Ljava/lang/Object;
.source "KaKaLibConfig.java"


# static fields
.field public static final isJar:Z = true

.field public static isReleaseMode:Z

.field public static needCatchCrash:Z

.field public static needInitAnim:Z

.field public static needInitTaosdk:Z

.field public static needUserTrack:Z

.field public static useSystemProgressDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 10
    sput-boolean v1, Lcom/etao/kakalib/util/KaKaLibConfig;->needInitAnim:Z

    .line 14
    sput-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->isReleaseMode:Z

    .line 17
    sput-boolean v1, Lcom/etao/kakalib/util/KaKaLibConfig;->needInitTaosdk:Z

    .line 20
    sput-boolean v1, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    .line 23
    sput-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needCatchCrash:Z

    .line 25
    sput-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->useSystemProgressDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
