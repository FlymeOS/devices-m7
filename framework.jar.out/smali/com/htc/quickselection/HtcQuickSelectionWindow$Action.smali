.class Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;
.super Ljava/lang/Object;
.source "HtcQuickSelectionWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/quickselection/HtcQuickSelectionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Action"
.end annotation


# instance fields
.field actionListener:Landroid/view/View$OnClickListener;

.field description:Ljava/lang/String;

.field id:Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/quickselection/HtcQuickSelectionWindow;


# direct methods
.method constructor <init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;Ljava/lang/Object;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p2, "oid"    # Ljava/lang/Object;
    .param p3, "txt"    # Ljava/lang/String;
    .param p4, "litener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->this$0:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->actionListener:Landroid/view/View$OnClickListener;

    .line 762
    iput-object p2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->id:Ljava/lang/Object;

    .line 763
    iput-object p3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    .line 764
    iput-object p4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->actionListener:Landroid/view/View$OnClickListener;

    .line 765
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->id:Ljava/lang/Object;

    return-object v0
.end method

.method public getListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->actionListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method
