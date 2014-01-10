.class public Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;
.super Ljava/lang/Object;
.source "SafeDefender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/securityjni/SafeDefender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtopTokenInfo"
.end annotation


# instance fields
.field public pubkey:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;->token:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;->pubkey:Ljava/lang/String;

    .line 32
    return-void
.end method
