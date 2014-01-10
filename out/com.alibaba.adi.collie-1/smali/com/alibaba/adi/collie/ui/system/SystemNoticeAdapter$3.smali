.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$3;
.super Ljava/lang/Object;
.source "SystemNoticeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->inflateView(Lcom/alibaba/adi/collie/model/SystemNoticeData;Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

.field private final synthetic val$privacyHint:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$3;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$3;->val$privacyHint:Landroid/widget/LinearLayout;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 202
    const-string v0, "system_show_guide"

    .line 203
    const/4 v1, 0x0

    .line 202
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$3;->val$privacyHint:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    return-void
.end method
