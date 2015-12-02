.class public Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "HtcAdapterView2.java"

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
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 563
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterContextMenuInfo;->position:I

    .line 564
    iput-wide p3, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterContextMenuInfo;->id:J

    .line 565
    return-void
.end method
