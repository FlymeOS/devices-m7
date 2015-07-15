.class public final Landroid/media/TimedText$CellBound;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBound"
.end annotation


# instance fields
.field public final cellColumn:I

.field public final cellHeight:F

.field public final cellLeft:F

.field public final cellRow:I

.field public final cellTop:F

.field public final cellWidth:F


# direct methods
.method public constructor <init>(IIFFFF)V
    .locals 0
    .param p1, "cellColumn"    # I
    .param p2, "cellRow"    # I
    .param p3, "cellLeft"    # F
    .param p4, "cellTop"    # F
    .param p5, "cellWidth"    # F
    .param p6, "cellHeight"    # F

    .prologue
    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    iput p3, p0, Landroid/media/TimedText$CellBound;->cellLeft:F

    .line 1000
    iput p4, p0, Landroid/media/TimedText$CellBound;->cellTop:F

    .line 1001
    iput p5, p0, Landroid/media/TimedText$CellBound;->cellWidth:F

    .line 1002
    iput p6, p0, Landroid/media/TimedText$CellBound;->cellHeight:F

    .line 1003
    iput p1, p0, Landroid/media/TimedText$CellBound;->cellColumn:I

    .line 1004
    iput p2, p0, Landroid/media/TimedText$CellBound;->cellRow:I

    .line 1005
    return-void
.end method
