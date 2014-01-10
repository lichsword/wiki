.class public Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;
.super Ljava/lang/Object;
.source "BaseRemoteBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/business/BaseRemoteBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MessageWrapper"
.end annotation


# instance fields
.field public apiId:Landroid/taobao/apirequest/ApiID;

.field public apiResult:Landroid/taobao/apirequest/ApiResult;

.field public context:Ljava/lang/Object;

.field public requestDo:Ljava/lang/Object;

.field public requestType:I

.field final synthetic this$0:Lcom/taobao/business/BaseRemoteBusiness;


# direct methods
.method public constructor <init>(Lcom/taobao/business/BaseRemoteBusiness;Ljava/lang/Object;Landroid/taobao/apirequest/ApiID;ILjava/lang/Object;Landroid/taobao/apirequest/ApiResult;)V
    .locals 0
    .parameter
    .parameter "requestDo"
    .parameter "apiId"
    .parameter "requestType"
    .parameter "context"
    .parameter "apiResult"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->this$0:Lcom/taobao/business/BaseRemoteBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->requestDo:Ljava/lang/Object;

    .line 80
    iput-object p3, p0, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiId:Landroid/taobao/apirequest/ApiID;

    .line 81
    iput p4, p0, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->requestType:I

    .line 82
    iput-object p5, p0, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->context:Ljava/lang/Object;

    .line 83
    iput-object p6, p0, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiResult:Landroid/taobao/apirequest/ApiResult;

    .line 84
    return-void
.end method
