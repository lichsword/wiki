.class public Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;
.super Ljava/lang/Object;
.source "ApiConnectorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiConnectorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostPair"
.end annotation


# instance fields
.field mHost:Ljava/lang/String;

.field mTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .parameter "host"
    .parameter "startTime"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;->mHost:Ljava/lang/String;

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;->mTime:J

    .line 34
    return-void
.end method
