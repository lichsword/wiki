.class public interface abstract Lcom/laiwang/openapi/ILWAPI;
.super Ljava/lang/Object;
.source "ILWAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/openapi/ILWAPI$IIApiCallback;
    }
.end annotation


# virtual methods
.method public abstract getApp()Landroid/content/Context;
.end method

.method public abstract isLWAppInstalled()Z
.end method

.method public abstract registerAPP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract registerCallback(Lcom/laiwang/openapi/ILWAPI$IIApiCallback;)V
.end method

.method public abstract transactData(Landroid/content/Context;Lcom/laiwang/openapi/message/IILWMessage;I)Z
.end method
