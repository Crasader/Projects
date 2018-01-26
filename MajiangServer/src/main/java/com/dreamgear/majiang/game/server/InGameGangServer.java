package com.dreamgear.majiang.game.server;

import org.apache.mina.core.session.IoSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.dreamgear.majiang.game.game.Room;
import com.dreamgear.majiang.game.server.protocol.GameProtocol;
import com.dreamgear.majiang.game.server.request.InGameGangRequest;
import com.dreamgear.majiangserver.core.annotation.DGMessageService;
import com.dreamgear.majiangserver.net.BaseMessage;

@DGMessageService
public class InGameGangServer extends GameServer{
	private static final Logger logger = LoggerFactory.getLogger(InGameGangServer.class);
	public int GetProtocol() {
		// TODO Auto-generated method stub
		return GameProtocol.GAME_GANG;
	}

	public BaseMessage GetRequest() {
		// TODO Auto-generated method stub
		return new InGameGangRequest();
	}
	
	//
	public BaseMessage handle(IoSession is,BaseMessage request) {
		// TODO Auto-generated method stub
		logger.info("============InGameGangServer==========");
		super.handle(is, request);
		if(pm == null) return null;
		Room r = pm.getRoom();
		if(r == null) {
			logger.info("no't in room");
			return null;
		}
		
		InGameGangRequest req = (InGameGangRequest)request;
		
		r.getGameLogic().GangBrand(pm.getRoom().getGameLogic().GetPlayerIndex(pm),
				req.bid);
		
		return null;
	}
}
