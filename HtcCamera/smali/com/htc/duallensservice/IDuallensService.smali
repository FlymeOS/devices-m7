.class public interface abstract Lcom/htc/duallensservice/IDuallensService;
.super Ljava/lang/Object;
.source "IDuallensService.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract abort()V
.end method

.method public abstract finalizeEngine()V
.end method

.method public abstract forceWarp(Ljava/lang/String;)V
.end method

.method public abstract initalizeEngine(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract regDepthMapCallback(Lcom/htc/duallensservice/IDepthMapCallback;Ljava/lang/String;)V
.end method

.method public abstract resume()V
.end method

.method public abstract unregDepthMapCallback(Lcom/htc/duallensservice/IDepthMapCallback;Ljava/lang/String;)V
.end method
