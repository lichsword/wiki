.class public Landroid/taobao/common/dataobject/ItemDataObject;
.super Ljava/lang/Object;
.source "ItemDataObject.java"


# instance fields
.field private isChanged:Z

.field private isSelected:Z

.field private mData:Ljava/lang/Object;

.field private mExtraData:Ljava/lang/Object;

.field private mExtraUIData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/taobao/common/dataobject/ItemDataObject;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroid/taobao/common/dataobject/ItemDataObject;->mExtraData:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraUIData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/taobao/common/dataobject/ItemDataObject;->mExtraUIData:Ljava/lang/Object;

    return-object v0
.end method

.method public isChanged()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/taobao/common/dataobject/ItemDataObject;->isSelected:Z

    return v0
.end method

.method public setChanged(Z)V
    .locals 0
    .parameter "isChanged"

    .prologue
    .line 56
    iput-boolean p1, p0, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged:Z

    .line 57
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 68
    iput-object p1, p0, Landroid/taobao/common/dataobject/ItemDataObject;->mData:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public setExtraData(Ljava/lang/Object;)V
    .locals 0
    .parameter "mExtraData"

    .prologue
    .line 30
    iput-object p1, p0, Landroid/taobao/common/dataobject/ItemDataObject;->mExtraData:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public setExtraUIData(Ljava/lang/Object;)V
    .locals 0
    .parameter "extraUIData"

    .prologue
    .line 40
    iput-object p1, p0, Landroid/taobao/common/dataobject/ItemDataObject;->mExtraUIData:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "isSelected"

    .prologue
    .line 52
    iput-boolean p1, p0, Landroid/taobao/common/dataobject/ItemDataObject;->isSelected:Z

    .line 53
    return-void
.end method
