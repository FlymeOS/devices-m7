.class public Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# static fields
.field private static final DEFAULT_DELEGATE:Ljava/lang/Object;

.field private static final IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;


# instance fields
.field final mBridge:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 299
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/c;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/c;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    .line 305
    :goto_0
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    invoke-interface {v0}, Lcom/htc/lib1/cc/view/viewpager/view/b;->a()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    .line 306
    return-void

    .line 300
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 301
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/a;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/a;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    goto :goto_0

    .line 303
    :cond_1
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/d;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/d;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    invoke-interface {v0, p0}, Lcom/htc/lib1/cc/view/viewpager/view/b;->a(Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    .line 315
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 382
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    sget-object v1, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/b;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 2

    .prologue
    .line 483
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    sget-object v1, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/htc/lib1/cc/view/viewpager/view/b;->a(Ljava/lang/Object;Landroid/view/View;)Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    return-object v0
.end method

.method getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 422
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    sget-object v1, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/b;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 423
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .prologue
    .line 441
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    sget-object v1, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/b;->a(Ljava/lang/Object;Landroid/view/View;Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 442
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 402
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    sget-object v1, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/b;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 403
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 465
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    sget-object v1, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/b;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 503
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    sget-object v1, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/b;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 339
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    sget-object v1, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/b;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 340
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 361
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/b;

    sget-object v1, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/b;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 362
    return-void
.end method
