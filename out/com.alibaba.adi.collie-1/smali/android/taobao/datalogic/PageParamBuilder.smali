.class public Landroid/taobao/datalogic/PageParamBuilder;
.super Landroid/taobao/datalogic/ParameterBuilder;
.source "PageParamBuilder.java"


# instance fields
.field private fstPageNo:I

.field private lstPageNo:I

.field private pageStartFromZero:Z

.field protected totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/taobao/datalogic/ParameterBuilder;-><init>()V

    .line 13
    iput v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->totalPage:I

    .line 14
    iput v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    .line 15
    iput v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    .line 18
    iput-boolean v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageStartFromZero:Z

    return-void
.end method

.method private setTotalPage(I)V
    .locals 5
    .parameter "totalNum"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 26
    const-string v0, "PageParamBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fstPageNo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lstPageNo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageSize:I

    if-eqz v0, :cond_0

    .line 28
    iget v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageSize:I

    rem-int v0, p1, v0

    if-nez v0, :cond_2

    .line 29
    iget v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageSize:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->totalPage:I

    .line 33
    :cond_0
    :goto_0
    iget v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->totalPage:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->totalPage:I

    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    if-gt v0, v1, :cond_3

    .line 34
    :cond_1
    iput-boolean v3, p0, Landroid/taobao/datalogic/PageParamBuilder;->isFinished:Z

    .line 37
    :goto_1
    iget v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    if-gt v0, v3, :cond_4

    .line 38
    iput-boolean v3, p0, Landroid/taobao/datalogic/PageParamBuilder;->isBeginning:Z

    .line 42
    :goto_2
    iput p1, p0, Landroid/taobao/datalogic/PageParamBuilder;->totalNum:I

    .line 44
    return-void

    .line 31
    :cond_2
    iget v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageSize:I

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->totalPage:I

    goto :goto_0

    .line 36
    :cond_3
    iput-boolean v4, p0, Landroid/taobao/datalogic/PageParamBuilder;->isFinished:Z

    goto :goto_1

    .line 40
    :cond_4
    iput-boolean v4, p0, Landroid/taobao/datalogic/PageParamBuilder;->isBeginning:Z

    goto :goto_2
.end method


# virtual methods
.method public clearState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iput v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->totalPage:I

    .line 121
    iget-boolean v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageStartFromZero:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    .line 122
    iput v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    .line 123
    iput-boolean v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->isFinished:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->isBeginning:Z

    .line 125
    return-void

    :cond_0
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method public getFstPageParam()Landroid/taobao/util/Parameter;
    .locals 3

    .prologue
    .line 164
    iget v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    if-gtz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->mPageKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0
.end method

.method public getLstPageParam()Landroid/taobao/util/Parameter;
    .locals 3

    .prologue
    .line 179
    iget v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    if-gtz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->mPageKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0
.end method

.method public getNxtPageParam()Landroid/taobao/util/Parameter;
    .locals 3

    .prologue
    .line 148
    iget-boolean v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->isFinished:Z

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->mPageKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_1
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0
.end method

.method protected getOriginPageParam()Landroid/taobao/util/Parameter;
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->mPageKey:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageStartFromZero:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    return-object v0

    .line 192
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPrePageParam()Landroid/taobao/util/Parameter;
    .locals 3

    .prologue
    .line 133
    iget v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->mPageKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_1
    iget-object v0, p0, Landroid/taobao/datalogic/PageParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0
.end method

.method public putFstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 4
    .parameter "pageInfo"

    .prologue
    const/4 v0, 0x1

    .line 87
    iget v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    if-gt v1, v0, :cond_1

    :cond_0
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    if-gt v1, v0, :cond_2

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 91
    :cond_2
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    .line 92
    const-string v1, "PageParamBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fstPageNo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->totalNum:I

    invoke-direct {p0, v1}, Landroid/taobao/datalogic/PageParamBuilder;->setTotalPage(I)V

    goto :goto_0
.end method

.method public putLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 2
    .parameter "pageInfo"

    .prologue
    const/4 v0, 0x1

    .line 52
    iget v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    if-gt v1, v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->isFinished:Z

    if-eqz v1, :cond_2

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 56
    :cond_2
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    .line 57
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    if-nez v1, :cond_3

    .line 58
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    .line 59
    :cond_3
    iget v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    invoke-direct {p0, v1}, Landroid/taobao/datalogic/PageParamBuilder;->setTotalPage(I)V

    goto :goto_0
.end method

.method public removeFstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 3
    .parameter "pageInfo"

    .prologue
    const/4 v0, 0x1

    .line 104
    iget v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    if-gt v1, v0, :cond_1

    :cond_0
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_2

    .line 105
    :cond_1
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_2
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    .line 110
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->totalNum:I

    invoke-direct {p0, v1}, Landroid/taobao/datalogic/PageParamBuilder;->setTotalPage(I)V

    goto :goto_0
.end method

.method public removeLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 4
    .parameter "pageInfo"

    .prologue
    const/4 v0, 0x1

    .line 69
    iget v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    if-gt v1, v0, :cond_1

    :cond_0
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    iget v2, p0, Landroid/taobao/datalogic/PageParamBuilder;->fstPageNo:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_2

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_2
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    .line 75
    const-string v1, "PageParamBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lstPageNo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/taobao/datalogic/PageParamBuilder;->lstPageNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v1, p0, Landroid/taobao/datalogic/PageParamBuilder;->totalNum:I

    invoke-direct {p0, v1}, Landroid/taobao/datalogic/PageParamBuilder;->setTotalPage(I)V

    goto :goto_0
.end method

.method public setPageStartFromZero(Z)V
    .locals 0
    .parameter "pageStartFromZero"

    .prologue
    .line 21
    iput-boolean p1, p0, Landroid/taobao/datalogic/PageParamBuilder;->pageStartFromZero:Z

    .line 22
    return-void
.end method
