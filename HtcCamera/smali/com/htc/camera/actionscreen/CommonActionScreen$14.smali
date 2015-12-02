.class Lcom/htc/camera/actionscreen/CommonActionScreen$14;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

.field final synthetic val$adapter:Lcom/htc/camera/share/MediaSetAsListAdapter;

.field final synthetic val$bubble:Lcom/htc/camera/widget/PopupBubble;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/CommonActionScreen;Lcom/htc/camera/widget/PopupBubble;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/share/MediaSetAsListAdapter;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$14;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    iput-object p2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$14;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    iput-object p3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$14;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iput-object p4, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$14;->val$adapter:Lcom/htc/camera/share/MediaSetAsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$14;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/htc/camera/widget/PopupBubble;->close()V

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$14;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$14;->val$adapter:Lcom/htc/camera/share/MediaSetAsListAdapter;

    invoke-virtual {v1, p3}, Lcom/htc/camera/share/MediaSetAsListAdapter;->createIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 771
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$14;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$900(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot start activity"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
