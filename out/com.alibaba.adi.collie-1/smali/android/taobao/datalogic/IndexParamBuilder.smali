.class public Landroid/taobao/datalogic/IndexParamBuilder;
.super Landroid/taobao/datalogic/ParameterBuilder;
.source "IndexParamBuilder.java"


# instance fields
.field private fstIndex:I

.field private lstIndex:I

.field private realPage:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Landroid/taobao/datalogic/ParameterBuilder;-><init>()V

    .line 10
    iput v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    .line 11
    iput v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    .line 12
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->realPage:Landroid/util/SparseIntArray;

    return-void
.end method

.method private setTotalNum(I)V
    .locals 5
    .parameter "totalNum"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 15
    const-string v0, "IndexParamBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fstIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lstIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput p1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->totalNum:I

    .line 18
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    if-gt p1, v0, :cond_1

    .line 19
    :cond_0
    iput-boolean v3, p0, Landroid/taobao/datalogic/IndexParamBuilder;->isFinished:Z

    .line 22
    :goto_0
    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    if-ge v0, v3, :cond_2

    .line 23
    iput-boolean v3, p0, Landroid/taobao/datalogic/IndexParamBuilder;->isBeginning:Z

    .line 27
    :goto_1
    iput p1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->totalNum:I

    .line 28
    return-void

    .line 21
    :cond_1
    iput-boolean v4, p0, Landroid/taobao/datalogic/IndexParamBuilder;->isFinished:Z

    goto :goto_0

    .line 25
    :cond_2
    iput-boolean v4, p0, Landroid/taobao/datalogic/IndexParamBuilder;->isBeginning:Z

    goto :goto_1
.end method


# virtual methods
.method public clearState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->realPage:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 114
    iput v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->totalNum:I

    .line 115
    iput v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    .line 116
    iput v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    .line 117
    iput-boolean v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->isFinished:Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->isBeginning:Z

    .line 119
    return-void
.end method

.method public getFstPageParam()Landroid/taobao/util/Parameter;
    .locals 3

    .prologue
    .line 157
    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    if-gtz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->mNextIndexKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0
.end method

.method public getLstPageParam()Landroid/taobao/util/Parameter;
    .locals 5

    .prologue
    .line 170
    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    if-gtz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->mNextIndexKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    iget-object v3, p0, Landroid/taobao/datalogic/IndexParamBuilder;->realPage:Landroid/util/SparseIntArray;

    iget v4, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0
.end method

.method public getNxtPageParam()Landroid/taobao/util/Parameter;
    .locals 3

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->isFinished:Z

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->mNextIndexKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0
.end method

.method protected getOriginPageParam()Landroid/taobao/util/Parameter;
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->mNextIndexKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    return-object v0
.end method

.method public getPrePageParam()Landroid/taobao/util/Parameter;
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 127
    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    if-gtz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->realPage:Landroid/util/SparseIntArray;

    iget v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 130
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->mNextIndexKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    iget-object v3, p0, Landroid/taobao/datalogic/IndexParamBuilder;->realPage:Landroid/util/SparseIntArray;

    iget v4, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_1
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->mNextIndexKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    iget v3, p0, Landroid/taobao/datalogic/IndexParamBuilder;->pageSize:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public putFstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 4
    .parameter "pageInfo"

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    if-gtz v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    if-ge v1, v0, :cond_2

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 66
    :cond_2
    iget v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    iget-object v2, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    .line 67
    const-string v1, "PageParamBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fstPageNo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->totalNum:I

    invoke-direct {p0, v1}, Landroid/taobao/datalogic/IndexParamBuilder;->setTotalNum(I)V

    goto :goto_0
.end method

.method public putLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 3
    .parameter "pageInfo"

    .prologue
    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    iget v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    if-gtz v1, :cond_0

    :cond_2
    iget-boolean v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->isFinished:Z

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    if-nez v1, :cond_3

    .line 43
    const-string v1, "IndexParamBuilder"

    const-string v2, "bad total num"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_3
    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    iget-object v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    .line 50
    iget-object v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->realPage:Landroid/util/SparseIntArray;

    iget v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    iget-object v2, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    iget v0, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    invoke-direct {p0, v0}, Landroid/taobao/datalogic/IndexParamBuilder;->setTotalNum(I)V

    .line 52
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeFstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 2
    .parameter "pageInfo"

    .prologue
    .line 78
    iget v0, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    iget v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_2

    .line 79
    :cond_1
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 83
    :cond_2
    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    iget-object v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    .line 84
    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->totalNum:I

    invoke-direct {p0, v0}, Landroid/taobao/datalogic/IndexParamBuilder;->setTotalNum(I)V

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 3
    .parameter "pageInfo"

    .prologue
    .line 95
    iget v0, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    iget v1, p0, Landroid/taobao/datalogic/IndexParamBuilder;->fstIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_2

    .line 96
    :cond_1
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_2
    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    iget-object v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    .line 101
    const-string v0, "PageParamBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lstPageIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/taobao/datalogic/IndexParamBuilder;->lstIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget v0, p0, Landroid/taobao/datalogic/IndexParamBuilder;->totalNum:I

    invoke-direct {p0, v0}, Landroid/taobao/datalogic/IndexParamBuilder;->setTotalNum(I)V

    .line 103
    const/4 v0, 0x1

    goto :goto_0
.end method
