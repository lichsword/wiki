.class public abstract Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;
.super Landroid/taobao/datalogic/ClickableListBaseAdapter;
.source "ClickableDynamicListBaseAdapter.java"


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
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/taobao/datalogic/ClickableListBaseAdapter;-><init>(Landroid/content/Context;I)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->typeMap:Landroid/util/SparseIntArray;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->maxType:I

    .line 39
    iput p2, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->viewTypeCount:I

    .line 40
    return-void
.end method

.method private findReusedView(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 192
    iget-object v4, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 193
    .local v2, size:I
    const/4 v1, 0x0

    .line 194
    .local v1, reusedView:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 195
    iget-object v4, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #reusedView:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 196
    .restart local v1       #reusedView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 197
    .local v3, tagId:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 199
    iget-object v4, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    .end local v3           #tagId:Ljava/lang/Integer;
    :cond_0
    return-object v1

    .line 202
    .restart local v3       #tagId:Ljava/lang/Integer;
    :cond_1
    const/4 v1, 0x0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 213
    invoke-super {p0}, Landroid/taobao/datalogic/ClickableListBaseAdapter;->destroy()V

    .line 214
    return-void
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 50
    iget-object v1, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/common/dataobject/ItemDataObject;

    invoke-virtual {p0, v1}, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->mapData2Id(Landroid/taobao/common/dataobject/ItemDataObject;)I

    move-result v0

    .line 51
    .local v0, id:I
    iget-object v1, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->typeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 52
    iget-object v1, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->typeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 56
    :goto_0
    return v1

    .line 54
    :cond_0
    iget v1, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->maxType:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->maxType:I

    .line 55
    iget-object v1, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->typeMap:Landroid/util/SparseIntArray;

    iget v2, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->maxType:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    iget v1, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->maxType:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->mData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/taobao/common/dataobject/ItemDataObject;

    .line 83
    .local v6, data:Landroid/taobao/common/dataobject/ItemDataObject;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->mapData2Id(Landroid/taobao/common/dataobject/ItemDataObject;)I

    move-result v10

    .line 85
    .local v10, resourceId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 87
    .local v12, size:I
    if-eqz p2, :cond_3

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/taobao/datalogic/ViewHolder;

    .line 90
    .local v13, tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    iget-object v0, v13, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v6, :cond_1

    .line 94
    invoke-virtual {v6}, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged()Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v5, p2

    .line 187
    .end local v13           #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    .end local p2
    .local v5, convertView:Landroid/view/View;
    :goto_0
    return-object v5

    .line 97
    .end local v5           #convertView:Landroid/view/View;
    .restart local v13       #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    .restart local p2
    :cond_1
    if-eqz p1, :cond_3

    .line 98
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v12, :cond_3

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/taobao/datalogic/ViewHolder;

    .line 101
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

    .line 103
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

    .line 106
    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 107
    .local v3, childView:Landroid/view/View;
    iget-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, childView1:Landroid/view/View;
    move-object/from16 v17, p2

    .line 109
    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 110
    iget-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->removeViewAt(I)V

    move-object/from16 v17, p2

    .line 112
    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    iget-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    check-cast v13, Landroid/taobao/datalogic/ViewHolder;

    .line 117
    .restart local v13       #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    iget-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v13, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 118
    move-object/from16 v0, p2

    iput-object v0, v8, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 122
    iget-object v0, v13, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestLayout()V

    .line 127
    invoke-virtual {v6}, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v5, p2

    .line 128
    .end local p2
    .restart local v5       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 98
    .end local v3           #childView:Landroid/view/View;
    .end local v4           #childView1:Landroid/view/View;
    .end local v5           #convertView:Landroid/view/View;
    .restart local p2
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 136
    .end local v8           #holder:Landroid/taobao/datalogic/ViewHolder;
    .end local v9           #i:I
    .end local v13           #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    :cond_3
    const/16 v16, 0x0

    .line 137
    .local v16, viewId:Ljava/lang/Integer;
    if-eqz p2, :cond_4

    move-object/from16 v17, p2

    .line 138
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

    .line 139
    .restart local v16       #viewId:Ljava/lang/Integer;
    :cond_4
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v10, :cond_7

    .line 141
    :cond_5
    const-string v17, "DynamicBaseAdapter"

    const-string v18, "view type unmatched"

    invoke-static/range {v17 .. v18}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->findReusedView(I)Landroid/view/View;

    move-result-object v11

    .line 144
    .local v11, reusedView:Landroid/view/View;
    if-nez v11, :cond_6

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 146
    invoke-virtual {v11, v10}, Landroid/view/View;->setId(I)V

    .line 147
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 148
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->view2Holder(Landroid/view/View;)Landroid/taobao/datalogic/ViewHolder;

    move-result-object v15

    .line 149
    .local v15, viewHolder:Landroid/taobao/datalogic/ViewHolder;
    if-eqz v15, :cond_6

    .line 150
    invoke-virtual {v11, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v15           #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    :cond_6
    if-nez p2, :cond_a

    .line 158
    new-instance v7, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 159
    .local v7, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 160
    move-object/from16 p2, v7

    .line 161
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/taobao/datalogic/ViewHolder;

    .line 162
    .restart local v15       #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    move-object/from16 v0, p2

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 163
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    .line 164
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    .end local v7           #frame:Landroid/widget/FrameLayout;
    .end local v11           #reusedView:Landroid/view/View;
    .end local v15           #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    :cond_7
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/taobao/datalogic/ViewHolder;

    .line 182
    .restart local v15       #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    iget-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v6, :cond_8

    invoke-virtual {v6}, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 183
    :cond_8
    iput-object v6, v15, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    .line 184
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->bindView(Landroid/taobao/datalogic/ViewHolder;Landroid/taobao/common/dataobject/ItemDataObject;)V

    :cond_9
    move-object/from16 v5, p2

    .line 187
    .end local p2
    .restart local v5       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .end local v5           #convertView:Landroid/view/View;
    .end local v15           #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    .restart local v11       #reusedView:Landroid/view/View;
    .restart local p2
    :cond_a
    move-object/from16 v17, p2

    .line 166
    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .local v14, view:Landroid/view/View;
    move-object/from16 v17, p2

    .line 167
    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object/from16 v17, p2

    .line 168
    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/taobao/datalogic/ViewHolder;

    .line 170
    .restart local v15       #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    move-object/from16 v0, p2

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 171
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    .line 172
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    check-cast v15, Landroid/taobao/datalogic/ViewHolder;

    .line 175
    .restart local v15       #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    .line 176
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->RecycledViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/taobao/datalogic/ClickableDynamicListBaseAdapter;->viewTypeCount:I

    return v0
.end method

.method protected abstract mapData2Id(Landroid/taobao/common/dataobject/ItemDataObject;)I
.end method
