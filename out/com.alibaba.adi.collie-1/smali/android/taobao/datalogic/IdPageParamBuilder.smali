.class public Landroid/taobao/datalogic/IdPageParamBuilder;
.super Landroid/taobao/datalogic/ParameterBuilder;
.source "IdPageParamBuilder.java"


# instance fields
.field private id_FstIndex:I

.field private id_FstPageNo:I

.field private id_LstIndex:I

.field private id_LstPageNo:I

.field protected id_TotalPage:I

.field private ids:[Ljava/lang/String;

.field private pageSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tN_addedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/taobao/datalogic/ParameterBuilder;-><init>()V

    .line 12
    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    .line 13
    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    .line 15
    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_TotalPage:I

    .line 17
    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    .line 18
    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    .line 20
    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->tN_addedIndex:I

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/taobao/datalogic/IdPageParamBuilder;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method private calculateTotalPage(I)I
    .locals 2
    .parameter "totalNum"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, totalPage:I
    iget v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSize:I

    if-eqz v1, :cond_0

    .line 50
    iget v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSize:I

    rem-int v1, p1, v1

    if-nez v1, :cond_2

    .line 51
    iget v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSize:I

    div-int v0, p1, v1

    .line 56
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 57
    const/4 v0, 0x1

    .line 58
    :cond_1
    return v0

    .line 53
    :cond_2
    iget v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSize:I

    div-int v1, p1, v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected clearState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iput v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    .line 178
    iput v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    .line 180
    iput v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_TotalPage:I

    .line 182
    iput v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    .line 183
    iput v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    .line 184
    iput-boolean v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->isFinished:Z

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->isBeginning:Z

    .line 186
    iput v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->tN_addedIndex:I

    .line 187
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 189
    :cond_0
    return-void
.end method

.method protected getFstPageParam()Landroid/taobao/util/Parameter;
    .locals 4

    .prologue
    .line 232
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    if-gtz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mIDKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0
.end method

.method protected getLstPageParam()Landroid/taobao/util/Parameter;
    .locals 4

    .prologue
    .line 246
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    if-gtz v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mIDKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_1
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0
.end method

.method protected getNxtPageParam()Landroid/taobao/util/Parameter;
    .locals 4

    .prologue
    .line 212
    iget-boolean v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->isFinished:Z

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 216
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mIDKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mIDKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getOriginPageParam()Landroid/taobao/util/Parameter;
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mIDKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    return-object v0
.end method

.method protected getPrePageParam()Landroid/taobao/util/Parameter;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 194
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    if-gt v0, v1, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    if-eqz v0, :cond_1

    .line 197
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    if-gt v0, v1, :cond_2

    .line 198
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mIDKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageKey:Ljava/lang/String;

    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v4, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_1
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageSizeKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mIDKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->param:Landroid/taobao/util/Parameter;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->mPageKey:Ljava/lang/String;

    iget v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/util/Parameter;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected putFstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 5
    .parameter "pageInfo"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 115
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    if-gt v0, v2, :cond_0

    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 119
    :cond_0
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    if-gt v0, v2, :cond_1

    .line 120
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    .line 121
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v4, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    .line 126
    :goto_1
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    if-gt v0, v2, :cond_2

    .line 127
    iput-boolean v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->isBeginning:Z

    :goto_2
    move v0, v2

    .line 130
    goto :goto_0

    .line 123
    :cond_1
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    goto :goto_1

    .line 129
    :cond_2
    iput-boolean v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->isBeginning:Z

    goto :goto_2
.end method

.method protected putLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 5
    .parameter "pageInfo"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 63
    iget-boolean v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->isFinished:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 67
    :cond_0
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    .line 68
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    if-nez v0, :cond_1

    .line 69
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    .line 71
    :cond_1
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v4, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 73
    iget v0, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    invoke-direct {p0, v0}, Landroid/taobao/datalogic/IdPageParamBuilder;->calculateTotalPage(I)I

    move-result v0

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_TotalPage:I

    .line 81
    :goto_1
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_TotalPage:I

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    if-ge v0, v3, :cond_2

    .line 82
    iput v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    .line 83
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    .line 84
    iget v0, p1, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    invoke-direct {p0, v0}, Landroid/taobao/datalogic/IdPageParamBuilder;->calculateTotalPage(I)I

    move-result v0

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_TotalPage:I

    .line 88
    :cond_2
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->tN_addedIndex:I

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    if-gt v0, v3, :cond_3

    .line 90
    iget-object v0, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    if-eqz v0, :cond_5

    .line 91
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->totalNum:I

    iget-object v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v3, v3

    add-int/2addr v0, v3

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->totalNum:I

    .line 94
    :goto_2
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->tN_addedIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->tN_addedIndex:I

    .line 99
    :cond_3
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_TotalPage:I

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    if-gt v0, v3, :cond_6

    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    iget-object v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_6

    .line 100
    iput-boolean v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->isFinished:Z

    .line 107
    :goto_3
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    aget-object v1, v1, v3

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_TotalPage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 108
    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v4, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_TotalPage:I

    goto :goto_1

    .line 93
    :cond_5
    const-string v0, "IdPageParamBuilder"

    const-string v3, "bad total num"

    invoke-static {v0, v3}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 102
    :cond_6
    iput-boolean v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->isFinished:Z

    goto :goto_3
.end method

.method protected removeFstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 6
    .parameter "pageInfo"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_0

    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 148
    :goto_0
    return v0

    .line 141
    :cond_0
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    .line 142
    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v5, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v3, v0, :cond_1

    .line 143
    iput v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    .line 144
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    .line 147
    :cond_1
    iput-boolean v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->isBeginning:Z

    move v0, v2

    .line 148
    goto :goto_0
.end method

.method protected removeLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z
    .locals 5
    .parameter "pageInfo"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 155
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstPageNo:I

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_0

    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_FstIndex:I

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 170
    :goto_0
    return v0

    .line 159
    :cond_0
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    if-gt v0, v2, :cond_1

    .line 160
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    .line 161
    iget-object v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->pageSizeMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    iget v4, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    .line 166
    :goto_1
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_TotalPage:I

    iget v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    if-gt v0, v3, :cond_2

    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstIndex:I

    iget-object v3, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_2

    .line 167
    iput-boolean v2, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->isFinished:Z

    :goto_2
    move v0, v2

    .line 170
    goto :goto_0

    .line 163
    :cond_1
    iget v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->id_LstPageNo:I

    goto :goto_1

    .line 169
    :cond_2
    iput-boolean v1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->isFinished:Z

    goto :goto_2
.end method

.method public setIds([Ljava/lang/String;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 33
    iput-object p1, p0, Landroid/taobao/datalogic/IdPageParamBuilder;->ids:[Ljava/lang/String;

    .line 34
    return-void
.end method
