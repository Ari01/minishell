/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minishell.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dchheang <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/09 11:32:46 by dchheang          #+#    #+#             */
/*   Updated: 2021/09/09 11:51:31 by dchheang         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minishell.h"

int	run()
{
	char	*line;

	signal(SIGINT, &handle_signal);
	while (1)
	{
		line = readline(PROMPT);
		free(line);
		line = NULL;
	}
	return (1);
}

int	main()
{
	run();
	return (0);
}
