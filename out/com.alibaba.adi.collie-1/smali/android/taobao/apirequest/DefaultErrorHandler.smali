.class public abstract Landroid/taobao/apirequest/DefaultErrorHandler;
.super Ljava/lang/Object;
.source "DefaultErrorHandler.java"

# interfaces
.implements Landroid/taobao/apirequest/IErrorHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handlerError()V
.end method

.method public run()V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/taobao/apirequest/DefaultErrorHandler;->handlerError()V

    .line 15
    return-void
.end method
