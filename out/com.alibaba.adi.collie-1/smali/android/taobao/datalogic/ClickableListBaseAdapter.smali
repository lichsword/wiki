.class public abstract Landroid/taobao/datalogic/ClickableListBaseAdapter;
.super Landroid/taobao/datalogic/ListBaseAdapter;
.source "ClickableListBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mOnListItemChildClickListener:Landroid/taobao/datalogic/OnListItemChildClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/taobao/datalogic/ListBaseAdapter;-><init>(Landroid/content/Context;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, data:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/taobao/datalogic/ListBaseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/taobao/datalogic/ClickableListBaseAdapter;->mOnListItemChildClickListener:Landroid/taobao/datalogic/OnListItemChildClickListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Landroid/taobao/datalogic/ClickableListBaseAdapter;->mOnListItemChildClickListener:Landroid/taobao/datalogic/OnListItemChildClickListener;

    invoke-interface {v0, p0, p1}, Landroid/taobao/datalogic/OnListItemChildClickListener;->onListItemChildClick(Landroid/taobao/datalogic/ClickableListBaseAdapter;Landroid/view/View;)V

    .line 54
    :cond_0
    return-void
.end method

.method public setOnListItemChlidClickListener(Landroid/taobao/datalogic/OnListItemChildClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 22
    iput-object p1, p0, Landroid/taobao/datalogic/ClickableListBaseAdapter;->mOnListItemChildClickListener:Landroid/taobao/datalogic/OnListItemChildClickListener;

    .line 23
    return-void
.end method
