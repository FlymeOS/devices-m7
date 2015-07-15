.class Lcom/android/server/AppOpsService$HintDialog$3;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService$HintDialog;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$HintDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AppOpsService$HintDialog;

.field final synthetic val$this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$HintDialog;Lcom/android/server/AppOpsService;)V
    .locals 0

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/android/server/AppOpsService$HintDialog$3;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iput-object p2, p0, Lcom/android/server/AppOpsService$HintDialog$3;->val$this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 1
    .param p1, "btn"    # Lcom/htc/widget/HtcCompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog$3;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    # setter for: Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z
    invoke-static {v0, p2}, Lcom/android/server/AppOpsService$HintDialog;->access$602(Lcom/android/server/AppOpsService$HintDialog;Z)Z

    .line 1493
    return-void
.end method
