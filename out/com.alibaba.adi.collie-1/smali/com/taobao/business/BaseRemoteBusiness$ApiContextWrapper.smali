.class public Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;
.super Ljava/lang/Object;
.source "BaseRemoteBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/business/BaseRemoteBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ApiContextWrapper"
.end annotation


# instance fields
.field public apiId:Landroid/taobao/apirequest/ApiID;

.field public context:Ljava/lang/Object;

.field public requestDo:Ljava/lang/Object;

.field public requestType:I

.field final synthetic this$0:Lcom/taobao/business/BaseRemoteBusiness;


# direct methods
.method public constructor <init>(Lcom/taobao/business/BaseRemoteBusiness;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->this$0:Lcom/taobao/business/BaseRemoteBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
