.class Lcom/htc/camera/actionscreen/CommonActionScreen$17;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

.field final synthetic val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;

.field final synthetic val$observer:Landroid/database/DataSetObserver;

.field final synthetic val$shareviaProvider:Lcom/htc/camera/share/ShareViaAdapterProvider;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/CommonActionScreen;Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/share/ShareViaAdapterProvider;Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    iput-object p2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    iput-object p3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iput-object p4, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$shareviaProvider:Lcom/htc/camera/share/ShareViaAdapterProvider;

    iput-object p5, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$observer:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 976
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$2000(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShareClicked() - clicked on item["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isExpanded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 984
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 986
    const/16 v1, 0xa1

    iget-object v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$2100(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShareClicked() - item["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is \"More\", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "expand"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 990
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 991
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setIsDimissOk"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 994
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 995
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->notifyDataSetChanged()V

    .line 1010
    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v0, p3}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1001
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$2200(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShareClicked() - item["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$shareviaProvider:Lcom/htc/camera/share/ShareViaAdapterProvider;

    invoke-virtual {v1, p3}, Lcom/htc/camera/share/ShareViaAdapterProvider;->createIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    .line 1003
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->val$observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v0

    .line 1008
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$2300(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onShareClicked() - error occurs"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
