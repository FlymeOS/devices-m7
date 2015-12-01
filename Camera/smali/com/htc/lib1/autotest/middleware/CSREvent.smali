.class public Lcom/htc/lib1/autotest/middleware/CSREvent;
.super Ljava/lang/Object;
.source "CSREvent.java"


# instance fields
.field private mEventString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/htc/lib1/autotest/middleware/CSREvent;->mEventString:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/CSREvent;->mEventString:Ljava/lang/String;

    return-object v0
.end method
