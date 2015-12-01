.class final Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp$PerformFlagButtonCheck;
.super Ljava/lang/Object;
.source "HtcListItem7Badges1LineBottomStamp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;


# direct methods
.method private constructor <init>(Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp$PerformFlagButtonCheck;->this$0:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;Lcom/htc/lib1/cc/widget/y;)V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp$PerformFlagButtonCheck;-><init>(Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp$PerformFlagButtonCheck;->this$0:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    # invokes: Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->performFlagButtonClick()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->access$200(Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;)V

    .line 757
    return-void
.end method
