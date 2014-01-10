.class public Lcom/alibaba/adi/collie/share/control/ShareListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/share/control/Share;",
            ">;"
        }
    .end annotation
.end field

.field gridView:Landroid/widget/GridView;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/GridView;)V
    .locals 0
    .parameter "mContext"
    .parameter "gridView"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->gridView:Landroid/widget/GridView;

    .line 29
    return-void
.end method

.method private doDiffirence(Lcom/alibaba/adi/collie/share/control/Share;Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;)V
    .locals 2
    .parameter "app"
    .parameter "holder"

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p2, Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;->app_icon:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/share/control/Share;->getLogo()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    iget-object v0, p2, Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;->app_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/share/control/Share;->getShareName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->appList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->appList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->appList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->appList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/share/control/Share;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v0, 0x0

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, holder:Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 50
    new-instance v1, Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;

    .end local v1           #holder:Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;
    invoke-direct {v1}, Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;-><init>()V

    .line 51
    .restart local v1       #holder:Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03009e

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    const v2, 0x7f080204

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;->app_icon:Landroid/widget/ImageButton;

    .line 54
    const v2, 0x7f080205

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;->app_name:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->appList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 64
    .local v0, app:Lcom/alibaba/adi/collie/share/control/Share;
    :goto_1
    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->doDiffirence(Lcom/alibaba/adi/collie/share/control/Share;Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;)V

    .line 68
    :cond_0
    return-object p2

    .line 59
    .end local v0           #app:Lcom/alibaba/adi/collie/share/control/Share;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;
    check-cast v1, Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/alibaba/adi/collie/share/control/ShareListAdapter$ViewHolder;
    goto :goto_0

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->appList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/share/control/Share;

    move-object v0, v2

    goto :goto_1
.end method

.method public setAppList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/share/control/Share;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/share/control/Share;>;"
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->appList:Ljava/util/ArrayList;

    .line 24
    return-void
.end method
