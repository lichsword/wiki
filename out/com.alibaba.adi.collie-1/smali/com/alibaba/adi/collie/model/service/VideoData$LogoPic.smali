.class public Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;
.super Ljava/lang/Object;
.source "VideoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/model/service/VideoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogoPic"
.end annotation


# instance fields
.field height:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/adi/collie/model/service/VideoData;

.field url:Ljava/lang/String;

.field width:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/model/service/VideoData;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;->this$0:Lcom/alibaba/adi/collie/model/service/VideoData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/adi/collie/model/service/VideoData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "url"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;->this$0:Lcom/alibaba/adi/collie/model/service/VideoData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;->width:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;->height:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;->url:Ljava/lang/String;

    .line 63
    return-void
.end method
