.class public abstract Landroid/taobao/datalogic/ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListBaseAdapter.java"


# instance fields
.field protected binder:Landroid/taobao/imagebinder/ImageBinder;

.field protected holders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/taobao/datalogic/ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    iput p2, p0, Landroid/taobao/datalogic/ListBaseAdapter;->mResource:I

    .line 61
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    .line 64
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
    .line 47
    .local p3, data:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-direct {p0, p1, p2}, Landroid/taobao/datalogic/ListBaseAdapter;-><init>(Landroid/content/Context;I)V

    .line 48
    iput-object p3, p0, Landroid/taobao/datalogic/ListBaseAdapter;->mData:Ljava/util/List;

    .line 49
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 28
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ListBaseAdapter;->mData:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, p1

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 245
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 151
    .restart local p2
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ListBaseAdapter;->mData:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/taobao/common/dataobject/ItemDataObject;

    .line 153
    .local v5, data:Landroid/taobao/common/dataobject/ItemDataObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 155
    .local v19, size:I
    if-eqz p2, :cond_3

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/taobao/datalogic/ViewHolder;

    .line 158
    .local v20, tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_6

    .line 163
    invoke-virtual {v5}, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 208
    .end local v20           #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 209
    .local v13, now:J
    const-wide/16 v15, 0x0

    .line 210
    .local v15, now2:J
    if-nez p2, :cond_8

    .line 214
    new-instance v6, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 215
    .local v6, frame:Landroid/widget/FrameLayout;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v23

    invoke-virtual {v0, v1, v6, v2}, Landroid/taobao/datalogic/ListBaseAdapter;->onInflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 216
    .local v21, v:Landroid/view/View;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/taobao/datalogic/ListBaseAdapter;->view2Holder(Landroid/view/View;)Landroid/taobao/datalogic/ViewHolder;

    move-result-object v22

    .line 217
    .local v22, viewHolder:Landroid/taobao/datalogic/ViewHolder;
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 218
    move-object/from16 v0, v22

    iput-object v6, v0, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    move-object/from16 v21, v6

    .line 222
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    .line 227
    .end local v6           #frame:Landroid/widget/FrameLayout;
    :goto_1
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_4

    invoke-virtual {v5}, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 228
    :cond_4
    move-object/from16 v0, v22

    iput-object v5, v0, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/taobao/datalogic/ListBaseAdapter;->bindView(Landroid/taobao/datalogic/ViewHolder;Landroid/taobao/common/dataobject/ItemDataObject;)V

    .line 231
    invoke-static {}, Landroid/taobao/util/TaoLog;->getLogStatus()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 232
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    .line 233
    .local v17, now3:J
    sub-long v23, v15, v13

    const-wide/32 v25, 0xf4240

    div-long v11, v23, v25

    .line 234
    .local v11, inflate:J
    sub-long v23, v17, v13

    const-wide/32 v25, 0xf4240

    div-long v7, v23, v25

    .line 235
    .local v7, getView:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " getView"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "inflate/bindView/getView = "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/16 v26, 0x0

    cmp-long v23, v15, v26

    if-nez v23, :cond_9

    const-string v23, "--"

    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "/"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/16 v26, 0x0

    cmp-long v23, v15, v26

    if-nez v23, :cond_a

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    :goto_3
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "/"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7           #getView:J
    .end local v11           #inflate:J
    .end local v17           #now3:J
    :cond_5
    move-object/from16 p2, v21

    .line 245
    goto/16 :goto_0

    .line 167
    .end local v13           #now:J
    .end local v15           #now2:J
    .end local v21           #v:Landroid/view/View;
    .end local v22           #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    .restart local v20       #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    :cond_6
    if-eqz p1, :cond_3

    .line 168
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4
    move/from16 v0, v19

    if-ge v10, v0, :cond_3

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/taobao/datalogic/ViewHolder;

    .line 171
    .local v9, holder:Landroid/taobao/datalogic/ViewHolder;
    iget-object v0, v9, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_7

    iget-object v0, v9, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 173
    const-string v23, "ListBaseAdapter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "rebind pos:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, p2

    .line 177
    check-cast v23, Landroid/view/ViewGroup;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 179
    .local v3, childView:Landroid/view/View;
    iget-object v0, v9, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v23, v0

    check-cast v23, Landroid/view/ViewGroup;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, childView1:Landroid/view/View;
    move-object/from16 v23, p2

    .line 182
    check-cast v23, Landroid/view/ViewGroup;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 183
    iget-object v0, v9, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v23, v0

    check-cast v23, Landroid/view/ViewGroup;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->removeViewAt(I)V

    move-object/from16 v23, p2

    .line 185
    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, v9, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v23, v0

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    .end local v20           #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    check-cast v20, Landroid/taobao/datalogic/ViewHolder;

    .line 190
    .restart local v20       #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    iget-object v0, v9, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 191
    move-object/from16 v0, p2

    iput-object v0, v9, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 194
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestLayout()V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->invalidate()V

    .line 200
    invoke-virtual {v5}, Landroid/taobao/common/dataobject/ItemDataObject;->isChanged()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 168
    .end local v3           #childView:Landroid/view/View;
    .end local v4           #childView1:Landroid/view/View;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 224
    .end local v9           #holder:Landroid/taobao/datalogic/ViewHolder;
    .end local v10           #i:I
    .end local v20           #tmpHolder:Landroid/taobao/datalogic/ViewHolder;
    .restart local v13       #now:J
    .restart local v15       #now2:J
    :cond_8
    move-object/from16 v21, p2

    .line 225
    .restart local v21       #v:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/taobao/datalogic/ViewHolder;

    .restart local v22       #viewHolder:Landroid/taobao/datalogic/ViewHolder;
    goto/16 :goto_1

    .line 235
    .restart local v7       #getView:J
    .restart local v11       #inflate:J
    .restart local v17       #now3:J
    :cond_9
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_2

    :cond_a
    sub-long v26, v7, v11

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_3
.end method


# virtual methods
.method protected abstract bindView(Landroid/taobao/datalogic/ViewHolder;Landroid/taobao/common/dataobject/ItemDataObject;)V
.end method

.method protected destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v2, p0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 308
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 310
    iget-object v2, p0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/datalogic/ViewHolder;

    iput-object v3, v2, Landroid/taobao/datalogic/ViewHolder;->bindedDo:Landroid/taobao/common/dataobject/ItemDataObject;

    .line 312
    iget-object v2, p0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/datalogic/ViewHolder;

    iput-object v3, v2, Landroid/taobao/datalogic/ViewHolder;->contentView:Landroid/view/View;

    .line 308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_1
    iget-object v2, p0, Landroid/taobao/datalogic/ListBaseAdapter;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 316
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 111
    iget-object v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 118
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 125
    iget v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/taobao/datalogic/ListBaseAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method

.method protected onInflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .parameter "resource"
    .parameter "parent"
    .parameter "attachToRoot"

    .prologue
    .line 138
    iget-object v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected setBackgroundDrawable(Ljava/lang/String;Landroid/view/View;)Z
    .locals 1
    .parameter "url"
    .parameter "view"

    .prologue
    .line 278
    iget-object v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->binder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/imagebinder/ImageBinder;->setBackgroundDrawable(Ljava/lang/String;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected setBackgroundDrawable(Ljava/lang/String;Landroid/view/View;Lcom/taobao/tao/imagepool/BitmapCreator;)Z
    .locals 1
    .parameter "url"
    .parameter "view"
    .parameter "bc"

    .prologue
    .line 282
    iget-object v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->binder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/imagebinder/ImageBinder;->setBackgroundDrawable(Ljava/lang/String;Landroid/view/View;Lcom/taobao/tao/imagepool/BitmapCreator;)Z

    move-result v0

    return v0
.end method

.method protected setDataList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, data:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Landroid/taobao/datalogic/ListBaseAdapter;->mData:Ljava/util/List;

    .line 85
    return-void
.end method

.method protected setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 1
    .parameter "url"
    .parameter "view"

    .prologue
    .line 295
    iget-object v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->binder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/imagebinder/ImageBinder;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    return v0
.end method

.method protected setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/tao/imagepool/BitmapCreator;)Z
    .locals 1
    .parameter "url"
    .parameter "view"
    .parameter "bc"

    .prologue
    .line 298
    iget-object v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->binder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/imagebinder/ImageBinder;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/tao/imagepool/BitmapCreator;)Z

    move-result v0

    return v0
.end method

.method protected setImageDrawableDelay(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 1
    .parameter "url"
    .parameter "view"

    .prologue
    .line 301
    iget-object v0, p0, Landroid/taobao/datalogic/ListBaseAdapter;->binder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/imagebinder/ImageBinder;->setImageDrawableDelay(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    return v0
.end method

.method public setImgBinder(Landroid/taobao/imagebinder/ImageBinder;)V
    .locals 0
    .parameter "binder"

    .prologue
    .line 94
    iput-object p1, p0, Landroid/taobao/datalogic/ListBaseAdapter;->binder:Landroid/taobao/imagebinder/ImageBinder;

    .line 95
    return-void
.end method

.method protected abstract view2Holder(Landroid/view/View;)Landroid/taobao/datalogic/ViewHolder;
.end method
