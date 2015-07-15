.class Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcPMSExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteScreenOnTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcPMSExtension;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcPMSExtension;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;->this$0:Lcom/android/server/power/HtcPMSExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcPMSExtension;Lcom/android/server/power/HtcPMSExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/HtcPMSExtension;
    .param p2, "x1"    # Lcom/android/server/power/HtcPMSExtension$1;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;-><init>(Lcom/android/server/power/HtcPMSExtension;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;->this$0:Lcom/android/server/power/HtcPMSExtension;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/HtcPMSExtension;->writeScreenStateHelper(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/HtcPMSExtension;->access$400(Lcom/android/server/power/HtcPMSExtension;Z)V

    .line 197
    return-void
.end method
