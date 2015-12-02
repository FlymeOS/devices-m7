.class public abstract Lcom/htc/camera/mainbar/IExpandableMenuUI;
.super Lcom/htc/camera/component/cm;
.source "IExpandableMenuUI.java"


# instance fields
.field public final isMenuExpanded:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 38
    const-string v0, "ExpandableMenuUI.isMenuExpanded"

    iget-object v1, p0, Lcom/htc/camera/mainbar/IExpandableMenuUI;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/IExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    .line 39
    return-void
.end method


# virtual methods
.method public closeExpandableMenu()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/IExpandableMenuUI;->closeExpandableMenu(Z)V

    .line 47
    return-void
.end method

.method public abstract closeExpandableMenu(Z)V
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/camera/mainbar/IExpandableMenuUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 60
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 61
    return-void
.end method

.method public abstract getExpandableMenuBounds()Landroid/graphics/Rect;
.end method

.method public abstract getIconViewContainer(I)Landroid/view/View;
.end method
