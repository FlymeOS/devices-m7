.class public final Lcom/htc/server/report/up/HtcSystemUPLogger;
.super Ljava/lang/Object;
.source "HtcSystemUPLogger.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static addErrorCount(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorType"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->getInstance()Lcom/htc/server/report/up/HtcSystemUPWrapper;

    move-result-object v0

    .line 25
    .local v0, "wrapper":Lcom/htc/server/report/up/HtcSystemUPWrapper;
    invoke-virtual {v0, p0}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->addErrorCount(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "appID"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "stringValue"    # Ljava/lang/String;
    .param p4, "intValue"    # I

    .prologue
    .line 10
    invoke-static {}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->getInstance()Lcom/htc/server/report/up/HtcSystemUPWrapper;

    move-result-object v0

    .local v0, "wrapper":Lcom/htc/server/report/up/HtcSystemUPWrapper;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "appID"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "labels"    # [Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->getInstance()Lcom/htc/server/report/up/HtcSystemUPWrapper;

    move-result-object v0

    .local v0, "wrapper":Lcom/htc/server/report/up/HtcSystemUPWrapper;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 17
    return-void
.end method
