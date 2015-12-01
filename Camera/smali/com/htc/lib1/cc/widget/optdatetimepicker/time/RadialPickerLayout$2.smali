.class Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout$2;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;

.field final synthetic val$isInnerCircle:[Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;

    iput-object p2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout$2;->val$isInnerCircle:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 605
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;

    # setter for: Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z
    invoke-static {v0, v4}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;->access$202(Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;Z)Z

    .line 606
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;->access$300(Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout$2;->val$isInnerCircle:[Ljava/lang/Boolean;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # invokes: Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;->access$400(Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;IZZZ)I

    move-result v0

    .line 608
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;

    # setter for: Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:I
    invoke-static {v1, v0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;->access$502(Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;I)I

    .line 609
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/a;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;->access$600(Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;)Lcom/htc/lib1/cc/widget/optdatetimepicker/time/a;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    invoke-interface {v1, v2, v0, v3}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/a;->a(IIZ)V

    .line 610
    return-void
.end method
