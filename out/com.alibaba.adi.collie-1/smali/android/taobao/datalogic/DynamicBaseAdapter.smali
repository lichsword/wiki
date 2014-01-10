.class public abstract Landroid/taobao/datalogic/DynamicBaseAdapter;
.super Landroid/taobao/datalogic/ListBaseAdapter;
.source "DynamicBaseAdapter.java"


# instance fields
.field RecycledViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private maxType:I

.field private typeMap:Landroid/util/SparseIntArray;

.field private viewTypeCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "viewTypeCount"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/taobao/datalogic/ListBaseAdapter;-><init>(Landroid/content/Context;I)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->typeMap:Landroid/util/SparseIntArray;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->maxType:I

    .line 34
    iput p2, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->viewTypeCount:I

    .line 35
    return-void
.end method

.method private findReusedView(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 185
    iget-object v4, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 186
    .local v2, size:I
    const/4 v1, 0x0

    .line 187
    .local v1, reusedView:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 188
    iget-object v4, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #reusedView:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 189
    .restart local v1       #reusedView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 190
    .local v3, tagId:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 192
    iget-object v4, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 197
    .end local v3           #tagId:Ljava/lang/Integer;
    :cond_0
    return-object v1

    .line 195
    .restart local v3       #tagId:Ljava/lang/Integer;
    :cond_1
    const/4 v1, 0x0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    invoke-super {p0}, Landroid/taobao/datalogic/ListBaseAdapter;->destroy()V

    .line 207
    return-void
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 45
    iget-object v1, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/common/dataobject/ItemDataObject;

    invoke-virtual {p0, v1}, Landroid/taobao/datalogic/DynamicBaseAdapter;->mapData2Id(Landroid/taobao/common/dataobject/ItemDataObject;)I

    move-result v0

    .line 46
    .local v0, id:I
    iget-object v1, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->typeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 47
    iget-object v1, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->typeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 51
    :goto_0
    return v1

    .line 49
    :cond_0
    iget v1, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->maxType:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->maxType:I

    .line 50
    iget-object v1, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->typeMap:Landroid/util/SparseIntArray;

    iget v2, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->maxType:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    iget v1, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->maxType:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/DynamicBaseAdapter;->mData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/taobao/common/dataobject/ItemDataObject;

    .line 78
    .local v6, data:Landroid/taobao/common/dataobject/ItemDataObject;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/taobao/datalogic/DynamicBaseAdapter;->mapData2Id(Landroid/taobao/common/dataobject/ItemDataObject;)I

    move-result v10

    .line 80
    .local v10, resourceId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/DynamicBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 82
    .local v12, size:I
    if-eqz p2, :cond_3

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/taobao/datalogic/ViewHolder;

    .line 85
    .local v13, tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/DynamicBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/DynamicBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    iget-object v0, v13, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v6, :cond_1

    .line 89
    invoke-virtual {v6}, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged()Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v5, p2

    .line 180
    .end local v13           #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    .end local p2
    .local v5, convertView:Landroid/view/View;
    :goto_0
    return-object v5

    .line 92
    .end local v5           #convertView:Landroid/view/View;
    .restart local v13       #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    .restart local p2
    :cond_1
    if-eqz p1, :cond_3

    .line 93
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v12, :cond_3

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/DynamicBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/taobao/datalogic/ViewHolder;

    .line 96
    .local v8, holder:Landroid/taobao/datalogic/ViewHolder;
    iget-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v6, :cond_2

    iget-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2

    iget-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 98
    const-string v17, "DynamicBaseAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "rebind pos:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, p2

    .line 101
    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 102
    .local v3, childView:Landroid/view/View;
    iget-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, childView1:Landroid/view/View;
    move-object/from16 v17, p2

    .line 104
    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 105
    iget-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->removeViewAt(I)V

    move-object/from16 v17, p2

    .line 107
    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    check-cast v13, Landroid/taobao/datalogic/ViewHolder;

    .line 112
    .restart local v13       #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    iget-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v13, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 113
    move-object/from16 v0, p2

    iput-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 117
    iget-object v0, v13, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestLayout()V

    .line 122
    invoke-virtual {v6}, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v5, p2

    .line 123
    .end local p2
    .restart local v5       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 93
    .end local v3           #childView:Landroid/view/View;
    .end local v4           #childView1:Landroid/view/View;
    .end local v5           #convertView:Landroid/view/View;
    .restart local p2
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 131
    .end local v8           #holder:Landroid/taobao/datalogic/ViewHolder;
    .end local v9           #i:I
    .end local v13           #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    :cond_3
    const/16 v16, 0x0

    .line 132
    .local v16, viewId:Ljava/lang/Integer;
    if-eqz p2, :cond_4

    move-object/from16 v17, p2

    .line 133
    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v17, p2

    check-cast v17, Landroid/view/ViewGroup;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    move-result v17

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #viewId:Ljava/lang/Integer;
    check-cast v16, Ljava/lang/Integer;

    .line 134
    .restart local v16       #viewId:Ljava/lang/Integer;
    :cond_4
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v10, :cond_7

    .line 136
    :cond_5
    const-string v17, "DynamicBaseAdapter"

    const-string v18, "view type unmatched"

    invoke-static/range {v17 .. v18}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/taobao/datalogic/DynamicBaseAdapter;->findReusedView(I)Landroid/view/View;

    move-result-object v11

    .line 139
    .local v11, reusedView:Landroid/view/View;
    if-nez v11, :cond_6

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/DynamicBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 141
    invoke-virtual {v11, v10}, Landroid/view/View;->setId(I)V

    .line 142
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 143
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/taobao/datalogic/DynamicBaseAdapter;->view2Holder(Landroid/view/View;)Landroid/taobao/datalogic/ViewHolder;

    move-result-object v15

    .line 144
    .local v15, viewHolder:Landroid/taobao/datalogic/ViewHolder;
    invoke-virtual {v11, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/DynamicBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v15           #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    :cond_6
    if-nez p2, :cond_a

    .line 151
    new-instance v7, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/DynamicBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    .local v7, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 153
    move-object/from16 p2, v7

    .line 154
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/taobao/datalogic/ViewHolder;

    .line 155
    .restart local v15       #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    move-object/from16 v0, p2

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 156
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    .line 157
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    .end local v7           #frame:Landroid/widget/FrameLayout;
    .end local v11           #reusedView:Landroid/view/View;
    .end local v15           #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    :cond_7
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/taobao/datalogic/ViewHolder;

    .line 175
    .restart local v15       #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    iget-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v6, :cond_8

    invoke-virtual {v6}, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 176
    :cond_8
    iput-object v6, v15, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    .line 177
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/taobao/datalogic/DynamicBaseAdapter;->bindView(Landroid/taobao/datalogic/ViewHolder;Landroid/taobao/common/dataobject/ItemDataObject;)V

    :cond_9
    move-object/from16 v5, p2

    .line 180
    .end local p2
    .restart local v5       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .end local v5           #convertView:Landroid/view/View;
    .end local v15           #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    .restart local v11       #reusedView:Landroid/view/View;
    .restart local p2
    :cond_a
    move-object/from16 v17, p2

    .line 159
    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .local v14, view:Landroid/view/View;
    move-object/from16 v17, p2

    .line 160
    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object/from16 v17, p2

    .line 161
    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/taobao/datalogic/ViewHolder;

    .line 163
    .restart local v15       #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    move-object/from16 v0, p2

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 164
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    .line 165
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    check-cast v15, Landroid/taobao/datalogic/ViewHolder;

    .line 168
    .restart local v15       #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    .line 169
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/DynamicBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/taobao/datalogic/DynamicBaseAdapter;->viewTypeCount:I

    return v0
.end method

.method protected abstract mapData2Id(Landroid/taobao/common/dataobject/ItemDataObject;)I
.end method
