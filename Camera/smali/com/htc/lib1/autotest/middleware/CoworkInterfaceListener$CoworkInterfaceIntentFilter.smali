.class Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$CoworkInterfaceIntentFilter;
.super Landroid/content/IntentFilter;
.source "CoworkInterfaceListener.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;)V
    .locals 1

    .prologue
    .line 221
    iput-object p1, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$CoworkInterfaceIntentFilter;->this$0:Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    # getter for: Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIntentFilterAction:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->access$100(Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$CoworkInterfaceIntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    return-void
.end method
