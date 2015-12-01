.class Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V
    .locals 0

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ListSelectorHider;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;)V
    .locals 0

    .prologue
    .line 2167
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ListSelectorHider;-><init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ListSelectorHider;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->clearListSelection()V

    .line 2175
    return-void
.end method
