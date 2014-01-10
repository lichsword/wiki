.class Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$ScanDecodeFailedException;
.super Ljava/lang/Exception;
.source "KakaLibAbsScanProcesser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanDecodeFailedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x68d7cd3afc2a0b54L


# instance fields
.field private failedFeature:Lcom/etao/kaka/decode/LogoDecodeResult;


# direct methods
.method public constructor <init>(Lcom/etao/kaka/decode/LogoDecodeResult;)V
    .locals 0
    .parameter "failedFeature"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$ScanDecodeFailedException;->failedFeature:Lcom/etao/kaka/decode/LogoDecodeResult;

    .line 144
    return-void
.end method


# virtual methods
.method public getFailedFeature()Lcom/etao/kaka/decode/LogoDecodeResult;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$ScanDecodeFailedException;->failedFeature:Lcom/etao/kaka/decode/LogoDecodeResult;

    return-object v0
.end method
