.class public abstract Lcom/alibaba/adi/collie/ui/view/PushBaseView;
.super Landroid/widget/FrameLayout;
.source "PushBaseView.java"

# interfaces
.implements Lorg/lichsword/util/ImageManager$ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;,
        Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;,
        Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT:I = 0x0

.field public static final SHOW_ALL:I = 0xf

.field public static final SHOW_CANCEL:I = 0x4

.field public static final SHOW_ICON:I = 0x1

.field public static final SHOW_NONE:I = 0x0

.field public static final SHOW_SHARE:I = 0x8

.field public static final SHOW_TEXT:I = 0x2

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private baseHomeFragment:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

.field protected close:Landroid/widget/ImageView;

.field private eventListener:Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;

.field protected icon:Landroid/widget/ImageView;

.field protected layout:Landroid/widget/FrameLayout;

.field private layoutClicked:Z

.field private layoutClosed:Z

.field private mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;

.field protected onElementClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;

.field private final onLayoutClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;

.field protected pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

.field protected share:Landroid/view/View;

.field protected showFlag:I

.field protected text:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    .line 71
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClicked:Z

    .line 72
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClosed:Z

    .line 231
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;-><init>(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->onElementClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;

    .line 233
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;-><init>(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->onLayoutClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    .line 71
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClicked:Z

    .line 72
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClosed:Z

    .line 231
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;-><init>(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->onElementClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;

    .line 233
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;-><init>(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->onLayoutClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    .line 71
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClicked:Z

    .line 72
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClosed:Z

    .line 231
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;-><init>(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->onElementClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;

    .line 233
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;-><init>(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->onLayoutClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Z
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->isMsgURLPrepared()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->baseHomeFragment:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/view/PushBaseView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClicked:Z

    return-void
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/view/PushBaseView;)Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->eventListener:Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/view/PushBaseView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClosed:Z

    return-void
.end method

.method private dataFill(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->onLayoutClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnLayoutClick;

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getTxt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/StringUtil;->ToDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, formatStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_1
    return-void
.end method

.method private dataShow(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 176
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v6

    .line 178
    .local v6, controlFlags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    .line 179
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->showCancelBtn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    .line 182
    :cond_0
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->enableShareInHomePage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getTxt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    .line 188
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getIco()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 192
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getIco()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, iconUrl:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 194
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v0

    .line 195
    .local v0, manager:Lorg/lichsword/util/ImageManager;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-string v4, "push"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual/range {v0 .. v5}, Lorg/lichsword/util/ImageManager;->bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 196
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    sget-object v1, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[push notify]set icon image with url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v0           #manager:Lorg/lichsword/util/ImageManager;
    .end local v2           #iconUrl:Ljava/lang/String;
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->text:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 205
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->scrollTextEffects()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 206
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 207
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->text:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 208
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->text:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 209
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 213
    :goto_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_a

    move v1, v7

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :cond_5
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->close:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 217
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->close:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_b

    move v1, v7

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :cond_6
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->share:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 219
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->share:Landroid/view/View;

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    and-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_c

    :goto_4
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_7
    return-void

    .line 199
    .restart local v2       #iconUrl:Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    sget-object v1, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[push notify]set icon image empty for url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v2           #iconUrl:Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->text:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    :cond_a
    move v1, v8

    .line 213
    goto :goto_2

    :cond_b
    move v1, v8

    .line 217
    goto :goto_3

    :cond_c
    move v7, v8

    .line 219
    goto :goto_4
.end method

.method private isMsgURLPrepared()Z
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v0

    .line 135
    .local v0, msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshContentView()V
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v0

    .line 140
    .local v0, msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    if-nez v0, :cond_1

    .line 141
    sget-object v1, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->TAG:Ljava/lang/String;

    const-string v2, "message in pushMsg is null...error"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->dataFill(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->dataShow(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)V

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->onSetMsgFinish()V

    .line 149
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->eventListener:Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->eventListener:Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;->onInit()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getTagForUT()Ljava/lang/String;
.end method

.method public isLayoutClicked()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClicked:Z

    return v0
.end method

.method public isLayoutClosed()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClosed:Z

    return v0
.end method

.method public onDownloadCompleted(Ljava/lang/String;Z)V
    .locals 7
    .parameter "url"
    .parameter "success"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v6

    .line 225
    .local v6, msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getIco()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v0

    .line 227
    .local v0, manager:Lorg/lichsword/util/ImageManager;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getIco()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "push"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual/range {v0 .. v5}, Lorg/lichsword/util/ImageManager;->bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 229
    .end local v0           #manager:Lorg/lichsword/util/ImageManager;
    :cond_0
    return-void
.end method

.method protected onSetMsgFinish()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;

    .line 114
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->baseHomeFragment:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    .line 115
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->showFlag:I

    .line 117
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->close:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->close:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->share:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->share:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_2
    return-void
.end method

.method public setMsg(Lcom/alibaba/adi/collie/ui/MainActivity;Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;)V
    .locals 2
    .parameter "mainActivity"
    .parameter "baseHomeFragment"
    .parameter "msg"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 89
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->TAG:Ljava/lang/String;

    const-string v1, "param main activity ref is null"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 92
    :cond_0
    if-nez p2, :cond_1

    .line 93
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->TAG:Ljava/lang/String;

    const-string v1, "param baseHomeFragment is null"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    if-nez p3, :cond_2

    .line 98
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->TAG:Ljava/lang/String;

    const-string v1, "param msg is null"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;

    .line 103
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->baseHomeFragment:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    .line 104
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 105
    iput-object p4, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->eventListener:Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;

    .line 106
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClicked:Z

    .line 107
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->layoutClosed:Z

    .line 108
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->TAG:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/alibaba/adi/collie/model/push/PushMsg;->debug()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->refreshContentView()V

    goto :goto_0
.end method
