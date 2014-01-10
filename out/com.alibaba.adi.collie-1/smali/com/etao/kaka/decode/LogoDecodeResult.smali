.class public Lcom/etao/kaka/decode/LogoDecodeResult;
.super Ljava/lang/Object;
.source "LogoDecodeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3192b984ffae4539L


# instance fields
.field private bgPath:Ljava/lang/String;

.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getBgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etao/kaka/decode/LogoDecodeResult;->bgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etao/kaka/decode/LogoDecodeResult;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setBgPath(Ljava/lang/String;)V
    .locals 0
    .parameter "bgPath"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/etao/kaka/decode/LogoDecodeResult;->bgPath:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/etao/kaka/decode/LogoDecodeResult;->content:Ljava/lang/String;

    .line 24
    return-void
.end method
