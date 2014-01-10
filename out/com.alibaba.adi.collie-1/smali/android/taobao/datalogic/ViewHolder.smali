.class public abstract Landroid/taobao/datalogic/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field protected anim:Landroid/view/animation/Animation;

.field protected bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

.field protected contentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getDo()Landroid/taobao/common/dataobject/ItemDataObject;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    return-object v0
.end method
