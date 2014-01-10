.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;
.super Ljava/lang/Object;
.source "SystemNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemNoticeDataCollection"
.end annotation


# instance fields
.field callIndex:I

.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/SystemNoticeData;",
            ">;"
        }
    .end annotation
.end field

.field smsIndex:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    .line 865
    iput v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->callIndex:I

    .line 866
    iput v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->smsIndex:I

    .line 867
    return-void
.end method

.method constructor <init>(Ljava/util/List;II)V
    .locals 0
    .parameter
    .parameter "callIndex"
    .parameter "smsIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/SystemNoticeData;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 869
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SystemNoticeData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    .line 871
    iput p2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->callIndex:I

    .line 872
    iput p3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->smsIndex:I

    .line 873
    return-void
.end method
