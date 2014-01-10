.class public abstract Landroid/taobao/datalogic/ParameterBuilder;
.super Ljava/lang/Object;
.source "ParameterBuilder.java"


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final NEXTINDEX:Ljava/lang/String; = "nextIndex"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PAGEEX:Ljava/lang/String; = "timestamp"

.field public static final PAGEMODE_IDNUM:I = 0x3

.field public static final PAGEMODE_INDEX:I = 0x1

.field public static final PAGEMODE_NUM:I = 0x2

.field public static final PAGE_SIZE:Ljava/lang/String; = "n"


# instance fields
.field protected isBeginning:Z

.field protected isFinished:Z

.field protected mIDKey:Ljava/lang/String;

.field protected mNextIndexKey:Ljava/lang/String;

.field protected mPageKey:Ljava/lang/String;

.field protected mPageKeyEx:Ljava/lang/String;

.field protected mPageSizeKey:Ljava/lang/String;

.field protected pageSize:I

.field protected param:Landroid/taobao/util/Parameter;

.field protected totalNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "page"

    iput-object v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->mPageKey:Ljava/lang/String;

    .line 62
    const-string v0, "timestamp"

    iput-object v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->mPageKeyEx:Ljava/lang/String;

    .line 63
    const-string v0, "n"

    iput-object v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->mPageSizeKey:Ljava/lang/String;

    .line 64
    const-string v0, "nextIndex"

    iput-object v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->mNextIndexKey:Ljava/lang/String;

    .line 65
    const-string v0, "id"

    iput-object v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->mIDKey:Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->isFinished:Z

    .line 142
    const/16 v0, 0xa

    iput v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->pageSize:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->isBeginning:Z

    return-void
.end method


# virtual methods
.method protected abstract clearState()V
.end method

.method protected abstract getFstPageParam()Landroid/taobao/util/Parameter;
.end method

.method public getIDKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->mIDKey:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getLstPageParam()Landroid/taobao/util/Parameter;
.end method

.method public getNextIndexKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->mNextIndexKey:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getNxtPageParam()Landroid/taobao/util/Parameter;
.end method

.method protected abstract getOriginPageParam()Landroid/taobao/util/Parameter;
.end method

.method public getPageKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->mPageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->pageSize:I

    return v0
.end method

.method public getPageSizeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->mPageSizeKey:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getPrePageParam()Landroid/taobao/util/Parameter;
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->totalNum:I

    return v0
.end method

.method public getmPageKeyEx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->mPageKeyEx:Ljava/lang/String;

    return-object v0
.end method

.method protected isFinish()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->isFinished:Z

    return v0
.end method

.method protected isRechBegin()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Landroid/taobao/datalogic/ParameterBuilder;->isBeginning:Z

    return v0
.end method

.method public onPageDataFinsh(Landroid/taobao/common/dataobject/PageDataObject;I)V
    .locals 0
    .parameter "pageInfo"
    .parameter "pageRrientation"

    .prologue
    .line 224
    return-void
.end method

.method protected abstract putFstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
.end method

.method protected abstract putLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
.end method

.method protected abstract removeFstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
.end method

.method protected abstract removeLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
.end method

.method public setIDKey(Ljava/lang/String;)V
    .locals 0
    .parameter "mIDKey"

    .prologue
    .line 132
    iput-object p1, p0, Landroid/taobao/datalogic/ParameterBuilder;->mIDKey:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setNextIndexKey(Ljava/lang/String;)V
    .locals 0
    .parameter "mNextIndexKey"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/taobao/datalogic/ParameterBuilder;->mNextIndexKey:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setPageKey(Ljava/lang/String;)V
    .locals 0
    .parameter "mPageKey"

    .prologue
    .line 79
    iput-object p1, p0, Landroid/taobao/datalogic/ParameterBuilder;->mPageKey:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .parameter "pageSize"

    .prologue
    .line 190
    iput p1, p0, Landroid/taobao/datalogic/ParameterBuilder;->pageSize:I

    .line 191
    return-void
.end method

.method public setPageSizeKey(Ljava/lang/String;)V
    .locals 0
    .parameter "mPageSizeKey"

    .prologue
    .line 94
    iput-object p1, p0, Landroid/taobao/datalogic/ParameterBuilder;->mPageSizeKey:Ljava/lang/String;

    .line 95
    return-void
.end method

.method protected setParam(Landroid/taobao/util/Parameter;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 209
    iput-object p1, p0, Landroid/taobao/datalogic/ParameterBuilder;->param:Landroid/taobao/util/Parameter;

    .line 210
    return-void
.end method

.method public setmPageKeyEx(Ljava/lang/String;)V
    .locals 0
    .parameter "mPageKeyEx"

    .prologue
    .line 124
    iput-object p1, p0, Landroid/taobao/datalogic/ParameterBuilder;->mPageKeyEx:Ljava/lang/String;

    .line 125
    return-void
.end method
