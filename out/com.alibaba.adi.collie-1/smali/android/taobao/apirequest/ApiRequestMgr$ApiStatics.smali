.class Landroid/taobao/apirequest/ApiRequestMgr$ApiStatics;
.super Ljava/lang/Object;
.source "ApiRequestMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiRequestMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApiStatics"
.end annotation


# instance fields
.field failNum:I

.field successNum:I

.field final synthetic this$0:Landroid/taobao/apirequest/ApiRequestMgr;


# direct methods
.method constructor <init>(Landroid/taobao/apirequest/ApiRequestMgr;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 780
    iput-object p1, p0, Landroid/taobao/apirequest/ApiRequestMgr$ApiStatics;->this$0:Landroid/taobao/apirequest/ApiRequestMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$ApiStatics;->successNum:I

    .line 782
    iput v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$ApiStatics;->failNum:I

    return-void
.end method


# virtual methods
.method onFail(ILjava/lang/String;I)V
    .locals 0
    .parameter "url"
    .parameter "desc"
    .parameter "time"

    .prologue
    .line 790
    return-void
.end method

.method onSuccess(III)V
    .locals 0
    .parameter "url"
    .parameter "size"
    .parameter "time"

    .prologue
    .line 786
    return-void
.end method
