.class public Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AbstractAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 545
    iput p2, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterContextMenuInfo;->position:I

    .line 546
    iput-wide p3, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterContextMenuInfo;->id:J

    .line 547
    return-void
.end method
