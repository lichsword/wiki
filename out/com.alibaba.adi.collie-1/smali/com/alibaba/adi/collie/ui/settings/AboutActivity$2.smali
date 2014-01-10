.class Lcom/alibaba/adi/collie/ui/settings/AboutActivity$2;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->initContentViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->mHits:[J

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    iget-object v4, v4, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->mHits:[J

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    iget-object v5, v5, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->mHits:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->mHits:[J

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    iget-object v4, v4, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 89
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->mHits:[J

    aget-wide v3, v3, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 90
    sget-boolean v3, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v3, :cond_2

    const-string v0, "close log"

    .line 91
    .local v0, ope:Ljava/lang/String;
    :goto_0
    sget-boolean v3, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    .line 92
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 94
    .end local v0           #ope:Ljava/lang/String;
    :cond_1
    return-void

    .line 90
    :cond_2
    const-string v0, "open log"

    goto :goto_0
.end method
