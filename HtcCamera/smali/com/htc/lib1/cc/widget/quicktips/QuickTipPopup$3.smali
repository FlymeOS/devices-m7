.class Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$3;
.super Ljava/lang/Object;
.source "QuickTipPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$3;->this$0:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 421
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 422
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$3;->this$0:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->access$000(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 423
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIncreasedTouchSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 424
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIncreasedTouchSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 425
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIncreasedTouchSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 426
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIncreasedTouchSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 427
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$3;->this$0:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mVisible_panel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->access$100(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$3;->this$0:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->access$000(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 428
    return-void
.end method
