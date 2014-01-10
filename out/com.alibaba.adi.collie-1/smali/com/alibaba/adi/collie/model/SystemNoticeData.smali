.class public Lcom/alibaba/adi/collie/model/SystemNoticeData;
.super Ljava/lang/Object;
.source "SystemNoticeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;
    }
.end annotation


# instance fields
.field data:Ljava/lang/Object;

.field tag:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/SystemNoticeData;->tag:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    .line 15
    iput-object p2, p0, Lcom/alibaba/adi/collie/model/SystemNoticeData;->data:Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/SystemNoticeData;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/SystemNoticeData;->tag:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/SystemNoticeData;->data:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public setTag(Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/SystemNoticeData;->tag:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    .line 24
    return-void
.end method
