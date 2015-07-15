.class public final Landroid/media/ClosedCaption$Region;
.super Ljava/lang/Object;
.source "ClosedCaption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ClosedCaption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Region"
.end annotation


# instance fields
.field public final afterEdge:I

.field public final backgroundColor:Ljava/lang/String;

.field public final beforeEdge:I

.field public final cellColumn:I

.field public final cellRow:I

.field public final cellhExtent:F

.field public final cellwExtent:F

.field public final cellxOrigin:F

.field public final cellyOrigin:F

.field public final displayAlign:Ljava/lang/String;

.field public final endEdge:I

.field public final hExtent:I

.field public final isCell:Z

.field public final regionID:Ljava/lang/String;

.field public final startEdge:I

.field public final wExtent:I

.field public final xOrigin:I

.field public final yOrigin:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIFFFFIIZ)V
    .locals 1
    .param p1, "regionID"    # Ljava/lang/String;
    .param p2, "backgroundColor"    # Ljava/lang/String;
    .param p3, "displayAlign"    # Ljava/lang/String;
    .param p4, "xOrigin"    # I
    .param p5, "yOrigin"    # I
    .param p6, "hExtent"    # I
    .param p7, "wExtent"    # I
    .param p8, "beforeEdge"    # I
    .param p9, "afterEdge"    # I
    .param p10, "startEdge"    # I
    .param p11, "endEdge"    # I
    .param p12, "cellxOrigin"    # F
    .param p13, "cellyOrigin"    # F
    .param p14, "cellhExtent"    # F
    .param p15, "cellwExtent"    # F
    .param p16, "cellColumn"    # I
    .param p17, "cellRow"    # I
    .param p18, "isCell"    # Z

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Landroid/media/ClosedCaption$Region;->regionID:Ljava/lang/String;

    .line 317
    iput-object p2, p0, Landroid/media/ClosedCaption$Region;->backgroundColor:Ljava/lang/String;

    .line 318
    iput-object p3, p0, Landroid/media/ClosedCaption$Region;->displayAlign:Ljava/lang/String;

    .line 319
    iput p4, p0, Landroid/media/ClosedCaption$Region;->xOrigin:I

    .line 320
    iput p5, p0, Landroid/media/ClosedCaption$Region;->yOrigin:I

    .line 321
    iput p6, p0, Landroid/media/ClosedCaption$Region;->hExtent:I

    .line 322
    iput p7, p0, Landroid/media/ClosedCaption$Region;->wExtent:I

    .line 323
    iput p8, p0, Landroid/media/ClosedCaption$Region;->beforeEdge:I

    .line 324
    iput p9, p0, Landroid/media/ClosedCaption$Region;->afterEdge:I

    .line 325
    iput p10, p0, Landroid/media/ClosedCaption$Region;->startEdge:I

    .line 326
    iput p11, p0, Landroid/media/ClosedCaption$Region;->endEdge:I

    .line 327
    iput p12, p0, Landroid/media/ClosedCaption$Region;->cellxOrigin:F

    .line 328
    iput p13, p0, Landroid/media/ClosedCaption$Region;->cellyOrigin:F

    .line 329
    iput p14, p0, Landroid/media/ClosedCaption$Region;->cellhExtent:F

    .line 330
    move/from16 v0, p15

    iput v0, p0, Landroid/media/ClosedCaption$Region;->cellwExtent:F

    .line 331
    move/from16 v0, p16

    iput v0, p0, Landroid/media/ClosedCaption$Region;->cellColumn:I

    .line 332
    move/from16 v0, p17

    iput v0, p0, Landroid/media/ClosedCaption$Region;->cellRow:I

    .line 333
    move/from16 v0, p18

    iput-boolean v0, p0, Landroid/media/ClosedCaption$Region;->isCell:Z

    .line 334
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regionID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ClosedCaption$Region;->regionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundColor :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ClosedCaption$Region;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayAlign :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ClosedCaption$Region;->displayAlign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xOrigin :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->xOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yOrigin :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->yOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hExtent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->hExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wExtent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->wExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beforeEdge :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->beforeEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", afterEdge :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->afterEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startEdge :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->startEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endEdge :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->endEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellxOrigin :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->cellxOrigin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellyOrigin :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->cellyOrigin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellhExtent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->cellhExtent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellwExtent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->cellwExtent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellColumn :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->cellColumn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellRow :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Region;->cellRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCell :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/ClosedCaption$Region;->isCell:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
