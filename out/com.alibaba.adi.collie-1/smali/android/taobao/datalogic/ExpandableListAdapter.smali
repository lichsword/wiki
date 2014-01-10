.class public abstract Landroid/taobao/datalogic/ExpandableListAdapter;
.super Landroid/taobao/datalogic/ListBaseAdapter;
.source "ExpandableListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListRowManager:Landroid/taobao/datalogic/RichListRowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/taobao/datalogic/ListBaseAdapter;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-direct {p0, p1}, Landroid/taobao/datalogic/ExpandableListAdapter;->init(Landroid/content/Context;)V

    .line 28
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
    .line 32
    .local p3, data:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/taobao/datalogic/ListBaseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    invoke-direct {p0, p1}, Landroid/taobao/datalogic/ExpandableListAdapter;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    iput-object p1, p0, Landroid/taobao/datalogic/ExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v0}, Landroid/taobao/datalogic/RichListRowManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-super {p0}, Landroid/taobao/datalogic/ListBaseAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/taobao/datalogic/RichListRowManager;->getListRowCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 62
    if-nez p2, :cond_3

    .line 64
    new-instance v8, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v8, layout:Landroid/widget/FrameLayout;
    const/4 v5, -0x1

    .line 66
    .local v5, itemHeight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v13}, Landroid/taobao/datalogic/RichListRowManager;->getRealRowPadding()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v15}, Landroid/taobao/datalogic/RichListRowManager;->getRealRowPadding()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 68
    const/4 v12, 0x0

    .local v12, x:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v13}, Landroid/taobao/datalogic/RichListRowManager;->getListItemCountOfRow()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 70
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mResource:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 71
    .local v11, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v13}, Landroid/taobao/datalogic/RichListRowManager;->getItemHeight()I

    move-result v13

    if-nez v13, :cond_1

    .line 72
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 76
    :goto_1
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v13}, Landroid/taobao/datalogic/RichListRowManager;->getRealItemWidth()I

    move-result v13

    invoke-direct {v9, v13, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v9, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v13, 0x3

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v13}, Landroid/taobao/datalogic/RichListRowManager;->getRealItemWidth()I

    move-result v13

    mul-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v14}, Landroid/taobao/datalogic/RichListRowManager;->getColumnSpacing()I

    move-result v14

    mul-int/2addr v14, v12

    add-int/2addr v13, v14

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 80
    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/taobao/datalogic/ExpandableListAdapter;->view2Holder(Landroid/view/View;)Landroid/taobao/datalogic/ViewHolder;

    move-result-object v4

    .line 83
    .local v4, holder:Landroid/taobao/datalogic/ViewHolder;
    invoke-virtual {v11, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v13}, Landroid/taobao/datalogic/RichListRowManager;->getItemHeight()I

    move-result v13

    if-nez v13, :cond_0

    .line 86
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/view/View;->measure(II)V

    .line 87
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 89
    :cond_0
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 74
    .end local v4           #holder:Landroid/taobao/datalogic/ViewHolder;
    .end local v9           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v13}, Landroid/taobao/datalogic/RichListRowManager;->getItemHeight()I

    move-result v5

    goto :goto_1

    .line 93
    .end local v11           #v:Landroid/view/View;
    :cond_2
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v13}, Landroid/taobao/datalogic/RichListRowManager;->getItemHeight()I

    move-result v13

    if-lez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v13}, Landroid/taobao/datalogic/RichListRowManager;->getItemHeight()I

    move-result v13

    :goto_2
    invoke-direct {v2, v14, v13}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 95
    .local v2, frameParams:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    move-object/from16 p2, v8

    .end local v2           #frameParams:Landroid/widget/AbsListView$LayoutParams;
    .end local v5           #itemHeight:I
    .end local v8           #layout:Landroid/widget/FrameLayout;
    .end local v12           #x:I
    :cond_3
    move-object/from16 v3, p2

    .line 101
    check-cast v3, Landroid/view/ViewGroup;

    .line 102
    .local v3, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/taobao/datalogic/RichListRowManager;->getRawPosition(I)I

    move-result v10

    .line 109
    .local v10, rawPosition:I
    const/4 v12, 0x0

    .restart local v12       #x:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    invoke-virtual {v13}, Landroid/taobao/datalogic/RichListRowManager;->getListItemCountOfRow()I

    move-result v13

    if-ge v12, v13, :cond_7

    .line 111
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 113
    .local v7, itemview:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mData:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_6

    .line 115
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/taobao/datalogic/ViewHolder;

    .line 116
    .local v6, itemHolder:Landroid/taobao/datalogic/ViewHolder;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/datalogic/ExpandableListAdapter;->mData:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/common/dataobject/ItemDataObject;

    .line 117
    .local v1, data:Landroid/taobao/common/dataobject/ItemDataObject;
    iget-object v13, v6, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    if-ne v13, v1, :cond_5

    invoke-virtual {v1}, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged()Z

    move-result v13

    if-nez v13, :cond_5

    .line 119
    add-int/lit8 v10, v10, 0x1

    .line 120
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .end local v1           #data:Landroid/taobao/common/dataobject/ItemDataObject;
    .end local v6           #itemHolder:Landroid/taobao/datalogic/ViewHolder;
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 93
    .end local v3           #group:Landroid/view/ViewGroup;
    .end local v7           #itemview:Landroid/view/View;
    .end local v10           #rawPosition:I
    .restart local v5       #itemHeight:I
    .restart local v8       #layout:Landroid/widget/FrameLayout;
    :cond_4
    const/4 v13, -0x2

    goto :goto_2

    .line 124
    .end local v5           #itemHeight:I
    .end local v8           #layout:Landroid/widget/FrameLayout;
    .restart local v1       #data:Landroid/taobao/common/dataobject/ItemDataObject;
    .restart local v3       #group:Landroid/view/ViewGroup;
    .restart local v6       #itemHolder:Landroid/taobao/datalogic/ViewHolder;
    .restart local v7       #itemview:Landroid/view/View;
    .restart local v10       #rawPosition:I
    :cond_5
    iput-object v1, v6, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    .line 125
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 127
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v1}, Landroid/taobao/datalogic/ExpandableListAdapter;->bindView(Landroid/taobao/datalogic/ViewHolder;Landroid/taobao/common/dataobject/ItemDataObject;)V

    .line 135
    .end local v1           #data:Landroid/taobao/common/dataobject/ItemDataObject;
    .end local v6           #itemHolder:Landroid/taobao/datalogic/ViewHolder;
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 132
    :cond_6
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 138
    .end local v7           #itemview:Landroid/view/View;
    :cond_7
    return-object p2
.end method

.method public registerRowManager(Landroid/taobao/datalogic/RichListRowManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 44
    iput-object p1, p0, Landroid/taobao/datalogic/ExpandableListAdapter;->mListRowManager:Landroid/taobao/datalogic/RichListRowManager;

    .line 45
    return-void
.end method
