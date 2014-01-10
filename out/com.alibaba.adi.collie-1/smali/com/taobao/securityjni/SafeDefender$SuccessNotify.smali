.class public interface abstract Lcom/taobao/securityjni/SafeDefender$SuccessNotify;
.super Ljava/lang/Object;
.source "SafeDefender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/securityjni/SafeDefender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuccessNotify"
.end annotation


# virtual methods
.method public abstract onSignatureDataGetted(Ljava/lang/String;)V
.end method

.method public abstract onTokenDataGetted(Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;)V
.end method
