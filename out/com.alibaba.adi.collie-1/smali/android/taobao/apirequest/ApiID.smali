.class public Landroid/taobao/apirequest/ApiID;
.super Ljava/lang/Object;
.source "ApiID.java"


# instance fields
.field m_apiProperty:Landroid/taobao/apirequest/ApiProperty;

.field m_conn:Landroid/taobao/apirequest/ApiConnector;

.field m_future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/taobao/apirequest/ApiResult;",
            ">;"
        }
    .end annotation
.end field

.field public m_mtopConnectorHelper:Landroid/taobao/apirequest/MTOPConnectorHelper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Landroid/taobao/apirequest/ApiConnector;)V
    .locals 0
    .parameter
    .parameter "conn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/taobao/apirequest/ApiResult;",
            ">;",
            "Landroid/taobao/apirequest/ApiConnector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, id:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroid/taobao/apirequest/ApiID;->m_future:Ljava/util/concurrent/Future;

    .line 17
    iput-object p2, p0, Landroid/taobao/apirequest/ApiID;->m_conn:Landroid/taobao/apirequest/ApiConnector;

    .line 18
    return-void
.end method


# virtual methods
.method public getMTOPConnectorHelper()Landroid/taobao/apirequest/MTOPConnectorHelper;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Landroid/taobao/apirequest/ApiID;->m_mtopConnectorHelper:Landroid/taobao/apirequest/MTOPConnectorHelper;

    return-object v0
.end method

.method public setMTOPConnectorHelper(Landroid/taobao/apirequest/MTOPConnectorHelper;)V
    .locals 0
    .parameter "ch"

    .prologue
    .line 29
    iput-object p1, p0, Landroid/taobao/apirequest/ApiID;->m_mtopConnectorHelper:Landroid/taobao/apirequest/MTOPConnectorHelper;

    .line 30
    return-void
.end method
