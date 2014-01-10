.class public Landroid/taobao/common/dataobject/PageDataObject;
.super Ljava/lang/Object;
.source "PageDataObject.java"


# static fields
.field public static final INVALID_PAGE_SIZE:I = -0x2


# instance fields
.field public data:[Landroid/taobao/common/dataobject/ItemDataObject;

.field public dealedTime:I

.field public errStr:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public isCached:Z

.field public result:Landroid/taobao/apirequest/ApiResult;

.field public totalnum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    .line 36
    iput-boolean v1, p0, Landroid/taobao/common/dataobject/PageDataObject;->isCached:Z

    .line 37
    iput v1, p0, Landroid/taobao/common/dataobject/PageDataObject;->dealedTime:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Landroid/taobao/common/dataobject/PageDataObject;->errorCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Landroid/taobao/common/dataobject/PageDataObject;->errorCode:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
